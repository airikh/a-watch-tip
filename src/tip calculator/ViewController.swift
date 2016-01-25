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
    
    var billNum:Double = 10.00
    var billNumSplit:Double = 10.00
    let splitNum:Int = 1
    
    let tipNum:Int = 20
    var tipTotal:Double = 2.00
    
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
    @IBAction func billNumChange(sender: AnyObject) {
        var currentString = Double(billText.text!)
        if billText.text == ""{
            currentString = 1000
        }
        
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        
        let numberFromField:Double = currentString!/100
        
        billText.text = String(numberFromField)
        //
        print("$%$%$%$ ",currentString )
    }
    
    @IBAction func splitNumChange(sender: AnyObject) {
        var splitNum = Int(splitNumText.text!)
        
        if splitNumText.text == ""{
            splitNum = 1
            //splitNumText.text = String(splitNum)
        }
        
        splitNumLabel.text = "÷ \(splitNum!)"
        
        tallyBill(splitNum!)
        print(":::::splitNumCHange splitNum ", splitNum, "billNum ",billNum )
        
    }
    
    @IBAction func tipNumChange(sender: AnyObject) {
        var tipNum = 20
        
        if tipNumText.text == ""{
            tipNum = 20
            tipNumText.text = String(tipNum)
        }
        else{
            let tipNum = Int(tipNumText.text!)!
            tallyBill(tipNum)
        }
        
    }
    
    func tallyBill(sender: AnyObject){
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
        let billSplitTot = (ceil(100*billNumSplit)/100)
        
        billLabel.text = String(billSplitTot)
        
        let tipNumTotal = (0.01 * (tipNum))
        
        tipTotal = tipNumTotal * billSplitTot
        let tipRoundTot = (ceil(100*tipTotal)/100)
        
        tipNumLabel.text = String(tipRoundTot)
        
        let billSplitTotalNum = billSplitTot + tipRoundTot
        billSplitTotalLabel.text = String(billSplitTotalNum)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        billText.text = String(billNum)
        billLabel.text = String(billNumSplit)
        
        tipNumText.text = String(tipNum)
        //tipNumLabel.text = String(tipTotal)
        
        billSplitTotalLabel.text = String(billSplitTotalNum)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

