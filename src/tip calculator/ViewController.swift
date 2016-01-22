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
    
    @IBAction func billNumChange(sender: AnyObject) {
        tallyBill(billNum)
    }
    
    @IBAction func splitNumChange(sender: AnyObject) {
        let splitNum = Int(splitNumText.text!)
        splitNumLabel.text = "÷ \(splitNum!)"
        
        tallyBill(splitNum!)
    }
    
    @IBAction func tipNumChange(sender: AnyObject) {
        let tipNum = Int(tipNumText.text!)!
        tallyBill(tipNum)
        
    }
    
    func tallyBill(sender: AnyObject){
        let splitNum = Double(splitNumText.text!)
        let billNum = Double(billText.text!)!
        let tipNum = Int(tipNumText.text!)!
        
        billNumSplit = (billNum / splitNum!)
        billLabel.text = String(billNumSplit)
        
        let tipNumTotal = (0.01 * Double(tipNum))
        
        tipTotal = tipNumTotal * billNumSplit
        tipNumLabel.text = String(tipTotal)
        
        let billSplitTotalNum = billNumSplit + tipTotal
        billSplitTotalLabel.text = String(billSplitTotalNum)
        
        // end
        print("::: tally bill :::::::::", splitNum, billNum)
        print("::: tally tip :::::::::", tipNumTotal, tipNum, billNumSplit)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        billText.text = String(billNum)
        billLabel.text = String(billNumSplit)
        
        tipNumText.text = String(tipNum)
        tipNumLabel.text = String(tipTotal)
        
        billSplitTotalLabel.text = String(billSplitTotalNum)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

