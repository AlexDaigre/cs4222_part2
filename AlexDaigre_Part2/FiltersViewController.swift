//
//  FiltersViewController.swift
//  AlexDaigre_Part2
//
//  Created by Alexander Daigre on 11/30/18.
//  Copyright © 2018 Alexander Daigre. All rights reserved.
//

import UIKit

class FiltersViewController: UIViewController {
    
    var gameCollection: [Game] = games
    var filters: [String] = []
    weak var delegate: GameReciverDelegate?
    @IBOutlet weak var filtersTable: UITableView!
    
    @IBAction func viewResults(_ sender: Any) {
        print(self.gameCollection)
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ResultsViewController
        {
            let vc = segue.destination as? ResultsViewController
            vc?.filteredGameCollection = gameCollection
            vc?.delegate = delegate
        }
    }
    
    func loadDataFromModel(){
        if let UIViewController = self.UIViewController as? FiltersViewController {
            
        }
    }
}

extension ConditionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let tabBarController = self.tabBarController as? CustomTabController {
            return tabBarController.currentCat.getMarkedPlacesCount()
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath)
        
        if let tabBarController = self.tabBarController as? CustomTabController {
            cell.textLabel?.text = tabBarController.currentCat.getMarkedPlaces(atIndex: indexPath.row)
            return cell
        }
        
        return cell
    }
}
