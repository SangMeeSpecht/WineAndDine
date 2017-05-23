//
//  FoodTableViewControllerSpec.swift
//  WineAndDine
//
//  Created by SangMee Specht on 5/23/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import Quick
import Nimble
@testable import WineAndDine

class FoodTableViewControllerSpec: QuickSpec {
    override func spec() {
        var foodTableViewController: FoodTableViewController?
        
        beforeEach {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            foodTableViewController = storyboard.instantiateViewController(withIdentifier: "FoodTable") as? FoodTableViewController
        }
        
        describe("storyboard") {
            it("loads the view") {
                expect(foodTableViewController?.view).toNot(beNil())
            }
        }
    }
}
