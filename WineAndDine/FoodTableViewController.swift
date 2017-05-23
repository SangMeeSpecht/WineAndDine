//
//  FoodTableViewController.swift
//  WineAndDine
//
//  Created by SangMee Specht on 5/23/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    var wineViewModel: WineViewModel?
    var wine: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (wineViewModel?.foodCount(for: wine!))!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food cell", for: indexPath)
        
        cell.textLabel?.text = wineViewModel?.getFoodPairings(for: wine!)[indexPath.row]
        
        return cell
    }
}
