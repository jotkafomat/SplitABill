//
//  TipColorModifier.swift
//  SplitABill
//
//  Created by Krzysztof Jankowski on 05/05/2021.
//

import Foundation
import SwiftUI

struct TipColorModifier: ViewModifier {
    
    var isZeroTip: Bool
    
    func body(content: Content) -> some View {
        if isZeroTip {
            return content.foregroundColor(.red)
        }
        return content.foregroundColor(.green)
    }
    
}

extension View {
    func tipColor(isZeroTip: Bool) -> some View {
        self.modifier(TipColorModifier(isZeroTip: isZeroTip))
    }
}
