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
    @IBOutlet weak var resultsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultsTable.dataSource = self
        resultsTable.delegate = self
    }
}

extension ResultsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredGameCollection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath)
        
        cell.textLabel?.text = filteredGameCollection[indexPath.row].name
        return cell
    }
}

extension ResultsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.reciveGame(game: filteredGameCollection[indexPath.row])
//        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
        navigationController?.popToRootViewController(animated: true)
    }
}
