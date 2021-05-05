//
//  SplitABillTests.swift
//  SplitABillTests
//
//  Created by Krzysztof Jankowski on 05/05/2021.
//

import XCTest
@testable import SplitABill

class SplitABillTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCheckisDividedByNumberofPeople() {
        let bill = Bill()
        
        bill.billAmount = "100"
        bill.numberOfPeople = 2
        
        XCTAssertEqual(bill.totalPerPerson, 50.0)

    }
    
    func testCheckGrandTotalWhen12PerCentTipIsAdded() {
        let bill = Bill()

        bill.billAmount = "100"
        bill.numberOfPeople = 2
        bill.selectedTip = .twelve
        
        XCTAssertEqual(bill.grandTotal, 112)
    }
}
