//
//  Tip.swift
//  SplitABill
//
//  Created by Krzysztof Jankowski on 05/05/2021.
//

import Foundation

enum Tip: Double, CaseIterable {

    case none = 0
    case ten = 10
    case twelve = 12
    case fifteen = 15
    case thirty = 30
    case seventyfive = 75
    case onehundret = 100

    var description: String {
        switch self {
        case .none:
            return "0%"
        case .ten:
            return "10% "
        case .twelve:
            return "12% "
        case .fifteen:
            return "15% "
        case .thirty:
            return "30% "
        case .seventyfive:
            return "75% "
        case .onehundret:
            return "100% "
        }
    }

}
