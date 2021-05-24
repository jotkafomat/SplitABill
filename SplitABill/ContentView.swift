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
        NavigationView {
            Form {
                Section {
                    TextField("Bill Amount", text: $bill.billAmount)
                        .keyboardType(.decimalPad)
                }
                Section {
                    Picker("Number of people", selection: $bill.numberOfPeople) {
                        ForEach(Array(1 ..< 5), id: \.self) {
                            Text($0 == 1 ? "\($0) person": "\($0) people")
                        }
                    }
                }

                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $bill.selectedTip) {
                        ForEach(Tip.allCases, id: \.self) {
                            Text($0.description)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }

                Section(header: Text("Grand Total")) {
                    Text("£\(bill.grandTotal, specifier: "%.2f")")
                        .tipColor(isZeroTip: bill.selectedTip == Tip.none)

                }

                Section(header: Text("Amount per person")) {
                    Text("£\(bill.totalPerPerson, specifier: "%.2f")")
                }
            }
            .navigationBarTitle(Text("Split a bill"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
