//
//  ViewController.swift
//  GroceryListApp
//
//  Created by Ella on 2/27/17.
//  Copyright © 2017 Ellatronic. All rights reserved.
//

import UIKit

var groceryList = [String]()

class GroceryListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var groceryListTableView: UITableView!
    var grocery: Grocery?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Table View Functions

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "GroceryListCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! GroceryListTableViewCell
        
        return cell
    }

    @IBAction func unwindToGorceryList(segue: UIStoryboardSegue) {}

}

