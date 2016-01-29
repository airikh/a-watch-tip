//
//  InterfaceController.swift
//  tip-calc2 Extension
//
//  Created by beth hayes on 1/28/16.
//  Copyright © 2016 abraxas creative. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var billCents: WKInterfacePicker!
    @IBOutlet var billDollar: WKInterfacePicker!
    @IBOutlet var splitTotalLabel: WKInterfaceLabel!
    
    //var centsArray = [ ]
    //var billCents = [self.picker, billCents]
    var billCentsData = Array(0...59)     // contents will be 0, 1, 2, 3...59, change to whatever you want
    var billCentsRows = 10_000            // any big number
    var billCentsMiddle = ((billCentsRows / billCentsData.count) / 2) * billCentsData.count
    
    @IBAction func billDollar(value: Int) {
    
        
    }
    
    @IBAction func billCents(value: Int) {
        print(value)
        
        
        
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        
    }
//    func setItems(billCents_items: [billCentsData]?){
//        
//    }
    override func willActivate() {
        
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        print("working")
        
       
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        
    }

}
