//
//  Bill.swift
//  SplitABill
//
//  Created by Krzysztof Jankowski on 05/05/2021.
//

import Foundation

class Bill: ObservableObject {
    @Published var billAmount = ""
    @Published var numberOfPeople = 1
    @Published var selectedTip: Tip = .none

    var totalPerPerson: Double {
        let count = Double(numberOfPeople)

        return grandTotal / count
    }

    var grandTotal: Double {
        let amount = Double(billAmount) ?? 0

        let tipValue = amount / 100 * selectedTip.rawValue
        return amount + tipValue
    }

}
