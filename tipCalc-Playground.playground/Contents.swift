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



///// watch


let pickerViewData = Array(0...39)     // contents will be 0, 1, 2, 3...59, change to whatever you want
let pickerViewRows = 10_000            // any big number
let pickerViewMiddle = ((pickerViewRows / pickerViewData.count) / 2) * pickerViewData.count
//

//
//        let item1 = WKPickerItem()
//        item1.title = "1"
//
//        let item2 = WKPickerItem()
//        item2.title = "2"
//
//        let item3 = WKPickerItem()
//        item3.title = "3"
//
//        let itemsArray = [item1, item2, item3]
/////
//        var i=0
//        let itemsArray = [ ]
//
//        while i < itemsArray.count{
//            print(itemsArray[i])
//            i++
//        }
//billCents.setItems(pickerViewData)

// Configure interface objects here.

//        self.picker.delegate = self
//        self.picker.dataSource = self
//        let initialValue = 0
//        if let row = rowForValue(initialValue) {
//            self.picker.selectRow(row, inComponent: 0, animated: false)
//        }


//NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:101];
//for(int ctr=0; ctr <= 100; ctr++) {
//    WKPickerItem *item = [[WKPickerItem alloc] init];
//    NSString *title = [NSString stringWithFormat:@"Title %d", ctr];
//    item.title = title;
//    [items addObject:item];
//}
//return [items copy];





