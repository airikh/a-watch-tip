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
let billNum:Double = 1234
let tipNum:Double = 1.236
var billNumSplit:Double = 10.00

var tipTotal:Double = 2.00

//let billTotalNum:Double = 12.00
let billSplitTotalNum:Double = 12.00

////

//self.tap()

//var billNum: String = ""
print(String(format: "hex string: %X", 123456))
print(String(format: "a float number: %.5f", 1.0321))

///

var currentString2:Double = 12.00
//if billText.text == ""{
//  currentString2 = 1000
//}



    let formatter2 = NSNumberFormatter()
    formatter2.numberStyle = NSNumberFormatterStyle.CurrencyStyle
    formatter2.locale = NSLocale(localeIdentifier: "en_US")
    formatter2.stringFromNumber(currentString2)
print("****** currentString", currentString2)

let formatter3 = NSNumberFormatter()
formatter3.minimumFractionDigits = 2
var currStr = (formatter3.stringFromNumber(10.00)!)



    let numberFromField2:Double = currentString2/100
    
    //billText.text = String(numberFromField2)
    print("****** if statement worked", numberFromField2)



