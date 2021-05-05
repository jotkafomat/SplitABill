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
    
    var totalPerPerson: Double {
        let amount = Int(billAmount) ?? 0
        
        return Double(amount / numberOfPeople)
    }
    
}
