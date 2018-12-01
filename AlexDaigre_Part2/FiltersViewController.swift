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
    weak var delegate: GameReciverDelegate?
    
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
}
