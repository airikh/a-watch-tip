//: Playground - noun: a place where people can play

import UIKit
///

let currentString:Double = 123

let formatter = NSNumberFormatter()
formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
formatter.locale = NSLocale(localeIdentifier: "en_US")

print(" \(formatter.stringFromNumber(currentString/100))")

var numberFromField:Double = currentString/100
var newText = formatter.stringFromNumber(numberFromField)

// the other kids code
for identifier in ["en_US", "fr_FR", "ja_JP"] {
    formatter.locale = NSLocale(localeIdentifier: identifier)
    print("\(identifier) \(formatter.stringFromNumber(1234.5678))")
}

///

////

let x = 1.23556789
let y = Double(round(100*x)/100)

//(0.01 * Double(tipNum)) 

let splitNum:Double = 2
let billNum:Double = 12.35
let tipNum:Double = 1.236

let billNumSplit:Double = (billNum / splitNum)
let billSplitTot = (round(100*billNumSplit)/100)

//billLabel.text = String(billNumSplit)

let tipNumTotal = (0.01 * Double(tipNum))
let tipTotal = tipNumTotal * billNumSplit

//tipNumLabel.text = String(tipTotal)

let billSplitTotalNum = billNumSplit + tipTotal
//billSplitTotalLabel.text = String(billSplitTotalNum)

///

//////// this will format the currency - DUPLICATE -

func formatCurrency(string string: Double) {
    print("this is the string", string)
    
    var currentString:Double = 123
    
    let formatter = NSNumberFormatter()
    formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
    formatter.locale = NSLocale(localeIdentifier: "en_US")
    
    let numberFromField:Double = currentString/100
    let newText = formatter.stringFromNumber(numberFromField)
    
    //billText.text = String(numberFromField)
    //currentString = formatter.stringFromNumber(numberFromField)!
    
}

