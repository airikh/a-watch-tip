//
//  CentsPickerData.swift
//  tip-calc-2
//
//  Created by beth hayes on 1/28/16.
//  Copyright © 2016 abraxas creative. All rights reserved.
//

import Cocoa

class CentsPickerData: NSObject {
    
    private let pickerViewData = Array(0...59)     // contents will be 0, 1, 2, 3...59, change to whatever you want
    private let pickerViewRows = 10_000            // any big number
    private let pickerViewMiddle = ((pickerViewRows / pickerViewData.count) / 2) * pickerViewData.count

}

extension ViewController : UIPickerViewDataSource {
    func valueForRow(row: Int) -> Int {
        // the rows repeat every `pickerViewData.count` items
        return pickerViewData[row % pickerViewData.count]
    }
    
    func rowForValue(value: Int) -> Int? {
        if let valueIndex = find(pickerViewData, value) {
            return pickerViewMiddle + value
        }
        return nil
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return "\(valueForRow(row))"
    }
}

extension ViewController : UIPickerViewDelegate {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewRows
    }
    
    // whenever the picker view comes to rest, we'll jump back to
    // the row with the current value that is closest to the middle
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let newRow = pickerViewMiddle + (row % pickerViewData.count)
        pickerView.selectRow(newRow, inComponent: 0, animated: false)
        println("Resetting row to \(newRow)")
    }
    
}
