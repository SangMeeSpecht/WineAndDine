//
//  WineTableViewControllerSpec.swift
//  WineAndDine
//
//  Created by SangMee Specht on 5/23/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import Quick
import Nimble
@testable import WineAndDine

class WineTableViewControllerSpec: QuickSpec {
    override func spec() {
        var wineTableViewController: WineTableViewController?
        
        beforeEach {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            wineTableViewController = storyboard.instantiateViewController(withIdentifier: "WineTable") as? WineTableViewController
        }
        
        describe("storyboard") {
            it("loads the view") {
                expect(wineTableViewController?.view).toNot(beNil())
            }
        }
    }
}
