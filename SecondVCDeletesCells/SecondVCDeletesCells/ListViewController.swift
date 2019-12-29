//
//  ViewController.swift
//  SecondVCDeletesCells
//
//  Created by Javier Calderon Jr. on 12/29/19.
//  Copyright © 2019 RockefellerFiles. All rights reserved.
//

import UIKit

protocol DeleteRowInTableviewDelegate: NSObjectProtocol {
    func deleteRow(inTableview rowToDelete: Int)
}

class ListViewController: UIViewController, DeleteRowInTableviewDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet private weak var listview: UITableView!
    private var dataSourceArray: [AnyHashable]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataSourceArray = ["First", "Second", "Third", "Fourth"]
        listview.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "moveToDetailView") {
            let objViewController = segue.destination as? ViewController
            objViewController?.delegate = self
        }
    }
    
    // MARK: - UItableview methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArray?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListViewCell")
        cell?.textLabel?.text = dataSourceArray?[indexPath.row] as? String
        
        return cell!
    
    }
    
    // MARK: - Custom methods
    @IBAction func move(toDetailView sender: Any) {
        performSegue(withIdentifier: "moveToDetailView", sender: self)
    }
    
    func deleteRow(inTableview rowToDelete: Int) {
        dataSourceArray?.remove(at: rowToDelete)
        listview.reloadData()
    }
}
