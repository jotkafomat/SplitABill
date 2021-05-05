//
//  ContentView.swift
//  SplitABill
//
//  Created by Krzysztof Jankowski on 05/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var bill = Bill()

    var body: some View {
        Form {
            Section {
                TextField("Bill Amount", text: $bill.billAmount)
                    .keyboardType(.decimalPad)
            }
            Section (header: Text("Grand Total")) {
                Text("£\(bill.grandTotal, specifier: "%.2f")")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
