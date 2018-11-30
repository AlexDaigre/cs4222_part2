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
    
    @IBAction func selectGame(_ sender: Any?){
        delegate?.reciveGame(game: filteredGameCollection[0])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is FiltersViewController
        {
            let vc = segue.destination as? FiltersViewController
        }
    }
    
}
