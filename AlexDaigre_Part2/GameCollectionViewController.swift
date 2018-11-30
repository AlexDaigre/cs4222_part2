//
//  ViewController.swift
//  AlexDaigre_Part2
//
//  Created by Alexander Daigre on 11/30/18.
//  Copyright © 2018 Alexander Daigre. All rights reserved.
//

import UIKit

class GameCollectionViewController: UIViewController, GameReciverDelegate {
    
    @IBAction func browseGameButton(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func reciveGame(game: Game){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is FiltersViewController
        {
            let vc = segue.destination as? FiltersViewController
            vc?.delegate = self
        }
    }
}

protocol GameReciverDelegate: class {
    func reciveGame(game: Game)
}

