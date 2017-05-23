//
//  WineTableViewController.swift
//  WineAndDine
//
//  Created by SangMee Specht on 5/22/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import UIKit

class WineTableViewController: UITableViewController {
    var wineViewModel: WineViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        wineViewModel = WineViewModel(wineList: wineFoodPairings)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (wineViewModel?.wineCount())!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wine cell", for: indexPath)
        
        cell.textLabel?.text = wineViewModel?.getWineName(at: indexPath)
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "Show Food":
                if let cell = sender as? UITableViewCell {
                    if let seguedToMVC = segue.destination as? FoodTableViewController {
                        seguedToMVC.wineViewModel = wineViewModel
                        seguedToMVC.wine = cell.textLabel?.text
                    }
                }
            default: break
            }
        }
    }
}
