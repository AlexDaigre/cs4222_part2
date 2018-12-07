//
//  FiltersViewController.swift
//  AlexDaigre_Part2
//
//  Created by Alexander Daigre on 11/30/18.
//  Copyright © 2018 Alexander Daigre. All rights reserved.
//

import UIKit

class FiltersViewController: UIViewController {
    
    weak var delegate: GameReciverDelegate?
    var filterSelected: Completeness = Completeness.cartrigeDiskOnly
    var model: GameCollection? = nil
    @IBOutlet weak var filtersTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        filtersTable.dataSource = self
        filtersTable.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ResultsViewController
        {
            let vc = segue.destination as? ResultsViewController
            vc?.filterBy = filterSelected
            vc?.delegate = delegate
            vc?.model = self.model!
        }
    }
    
    func generateFilter(index: Int){
        filterSelected = Completeness.allCases[index]
    }
}

extension FiltersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Completeness.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "filterCell", for: indexPath)
        
        cell.textLabel?.text = Completeness.allCases[indexPath.row].description
        return cell
    }
}

extension FiltersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        generateFilter(index: indexPath.row)
        performSegue(withIdentifier: "goToResults", sender: self)
    }
}
