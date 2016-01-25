//
//  ViewController.swift
//  tip calculator
//
//  Created by beth hayes on 1/21/16.
//  Copyright © 2016 abraxas creative. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var billText: UITextField!
    @IBOutlet var billLabel: UILabel!
    
    @IBOutlet var splitNumText: UITextField!
    @IBOutlet var splitNumLabel: UILabel!
    
    @IBOutlet var tipNumText: UITextField!
    @IBOutlet var tipNumLabel: UILabel!
    
    @IBOutlet var billTotalLabel: UILabel!
    @IBOutlet var billSplitTotalLabel: UILabel!
    
    var formatter = NSNumberFormatter()
    //formatter.minimumFractionDigits = 2
    
    var billNum:Double = 10.00
    var billNumSplit:Double = 10.00
    var splitNum:Int = 1
    
    var tipNum:Int = 20
    var tipTotal:Double = 2.00
    var currentString = 1.00
    
    //let billTotalNum:Double = 12.00
    let billSplitTotalNum:Double = 12.00
    
    //680.00           ÷2                  340.00
    //billText.text  splitNumText.text   billLabel.text
    //billNum         splitNum            billNumSplit
    //
    // tipNumText.text      timNumLabel.text
    // tipNum                tipTotal
    //
    // billTotalLabel.text     billSplitTotalLabel.text
    // billTotalNum             billSplitTotalNum
    
    //@IBAction func billNumChange(sender: AnyObject) {
        //tallyBill(billNum)
    //}
    
    @IBAction func billTextChange(sender: AnyObject) {
        currentString = Double(billText.text!)!
        //
        tallyBill(currentString)
        print("$%$%$%$ ",currentString )
    }
    
    @IBAction func billNumChange(sender: AnyObject) {
        if billText.text == ""{
            let currentString = (formatter.stringFromNumber(10.00)!)
            billText.text = String(currentString)
        }
    }
    
    @IBAction func splitNumTextChange(sender: AnyObject) {
        let splitNum = Int(splitNumText.text!)
        
        splitNumLabel.text = "÷ \(splitNum!)"
        tallyBill(splitNum!)
        
        print(":::::splitNumCHange splitNum ", splitNum, "billNum ",billNum )
        
    }
    @IBAction func splitNumChange(sender: AnyObject) {
        
        if splitNumText.text == ""{
            splitNum = 1
            splitNumText.text = String(splitNum)
            splitNumLabel.text = ""
        }
    }
    
    @IBAction func tipNumTextChange(sender: AnyObject) {
        let tipNum = Int(tipNumText.text!)!
        
        tallyBill(tipNum)
        print ("tipNumChange")
        
    }
    @IBAction func tipNumChange(sender: AnyObject) {
        
        if tipNumText.text == ""{
            tipNum = 20
            tipNumText.text = String(tipNum)
        }
        
    }
    
    func tallyBill(sender: AnyObject){
        print ("tallyBill")
        var splitNum = Double(splitNumText.text!)
        
        if splitNumText.text == ""{
            splitNum = 1
        }
        let billNum = Double(billText.text!)!
        var tipNum = Double(tipNumText.text!)!
        
        if tipNumText.text == "" {
            tipNum = 20
            print("tip number = 0")
        }
        
        billNumSplit = (billNum / splitNum!)
        let billSplitTot = (round(100*billNumSplit)/100)
        
        billLabel.text = (formatter.stringFromNumber(billSplitTot)!)
        
        let tipNumTotal = (0.01 * (tipNum))
        
        tipTotal = tipNumTotal * billSplitTot
        let tipRoundTot = (round(100*tipTotal)/100)
        tipNumLabel.text = (formatter.stringFromNumber(tipRoundTot)!)
        
        let billSplitTotalNum = billSplitTot + tipRoundTot
        billSplitTotalLabel.text = (formatter.stringFromNumber(billSplitTotalNum)!)
        
        print(":::::billSplitTotal splitNum", billSplitTot, splitNum, "tipRoundTot ",tipRoundTot, "tipNumTotal ",tipNumTotal, "tipNumTotal " )
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatter.minimumFractionDigits = 2
        
        billText.text = (formatter.stringFromNumber(billNum)!)
        billLabel.text = (formatter.stringFromNumber(billNumSplit)!)
        
        tipNumText.text = String(tipNum)
        tipNumLabel.text = (formatter.stringFromNumber(tipTotal)!)
        
        billSplitTotalLabel.text = (formatter.stringFromNumber(billSplitTotalNum)!)
        print ("viewDidLoad")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

