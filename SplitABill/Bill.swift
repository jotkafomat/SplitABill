//
//  Bill.swift
//  SplitABill
//
//  Created by Krzysztof Jankowski on 05/05/2021.
//

import Foundation

class Bill {
    var billAmount = ""
    var numberOfPeople = 1
    var selectedTip: Tip = .twelve
    
    var totalPerPerson: Double {
        let amount = Int(billAmount) ?? 0
        
        return Double(amount / numberOfPeople)
    }
    
    var grandTotal: Double {
        let amount = Double(billAmount) ?? 0
        
        let tipValue = amount / 100 * selectedTip.rawValue
        return amount + tipValue
    }
    
}
