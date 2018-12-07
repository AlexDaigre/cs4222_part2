//
//  ViewController.swift
//  AlexDaigre_Part2
//
//  Created by Alexander Daigre on 11/30/18.
//  Copyright © 2018 Alexander Daigre. All rights reserved.
//

import UIKit

class GameCollectionViewController: UIViewController, GameReciverDelegate {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var systemLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var completenessLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    
    var model: GameCollection = GameCollection();
    
    @IBAction func browseGames(_ sender: Any) {
        print("button Pressed")
        performSegue(withIdentifier: "goToFilters", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func reciveGame(game: Game){
        titleLabel.text = game.name
        systemLabel.text = game.system
        conditionLabel.text = game.condition.description
        completenessLabel.text = game.completeness.description
        notesLabel.text = game.notes
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is FiltersViewController
        {
            let vc = segue.destination as? FiltersViewController
            vc?.delegate = self
            vc?.model = self.model
        }
    }
}

protocol GameReciverDelegate: class {
    func reciveGame(game: Game)
}

