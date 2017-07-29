//
//  TableViewController.swift
//  TestInnerTableView
//
//  Created by Joan Angb on 30/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var mtableView: UITableView!
    
    var tvDelegate:InnerTableViewDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvDelegate = InnerTableViewDelegate()
        mtableView.delegate = tvDelegate
        mtableView.dataSource = tvDelegate
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


class InnerTableViewDelegate: NSObject, UITableViewDelegate, UITableViewDataSource{
    
    let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellSPlus") as! TableViewCellSPlus
        
        // set the text from the data model
        cell.lbl?.text = self.animals[indexPath.row]
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}
