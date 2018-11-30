//
//  ResultsViewController.swift
//  AlexDaigre_Part2
//
//  Created by Alexander Daigre on 11/30/18.
//  Copyright © 2018 Alexander Daigre. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var filteredGameCollection: [Game] = []
    weak var delegate: GameReciverDelegate?
    
    @IBOutlet weak var filteredGamesTable: UITableView!
    
    @IBAction func selectGame(_ sender: Any?){
        delegate?.reciveGame(game: filteredGameCollection[0])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

//extension ResultsViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if let tabBarController = self.tabBarController as? CustomTabController {
//            return tabBarController.currentCat.getMarkedPlacesCount()
//        }
//        return 0
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath)
//        
//        if let tabBarController = self.tabBarController as? CustomTabController {
//            cell.textLabel?.text = tabBarController.currentCat.getMarkedPlaces(atIndex: indexPath.row)
//            return cell
//        }
//        
//        return cell
//    }
//}
