//
//  AddItemTableViewController.swift
//  GroceryListApp
//
//  Created by Ella on 2/27/17.
//  Copyright © 2017 Ellatronic. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    // MARK: Properties

    var groceries = [Grocery]() // Initialize an empty array of Grocery objects

    @IBAction func addItem(_ sender: UIButton) {
        self.performSegue(withIdentifier: "unwindToGroceryList", sender: self)
//        groceryList.append("Hello")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the grocery list
        loadAddGroceryItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier
        let cellIdentifier = "AddItemCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? AddItemTableViewCell else {
            fatalError("The dequeued cell is not instance of AddItemTableViewCell")
        }

        // Fetch the appropriate grocery for the data source layout
        let grocery = groceries[indexPath.row]

        cell.addGroceryItemLabel.text = grocery.name
        cell.addItemGroceryImageView.image = grocery.photo

        return cell
    }

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: Private Methods

    private func loadAddGroceryItems() {
        let photo1 = UIImage(named: "apple")
        let photo2 = UIImage(named: "banana")
        let photo3 = UIImage(named: "orange")
        let photo4 = UIImage(named: "milk")
        let photo5 = UIImage(named: "cereal")
        let photo6 = UIImage(named: "bread")
        let photo7 = UIImage(named: "cheese")

        guard let grocery1 = Grocery(name: "Apple", photo: photo1, quantity: 0) else {
            fatalError("Unable to instantiate grocery1")
        }
        guard let grocery2 = Grocery(name: "Banana", photo: photo2, quantity: 0) else {
            fatalError("Unable to instantiate grocery2")
        }
        guard let grocery3 = Grocery(name: "Orange", photo: photo3, quantity: 0) else {
            fatalError("Unable to instantiate grocery3")
        }
        guard let grocery4 = Grocery(name: "Milk", photo: photo4, quantity: 0) else {
            fatalError("Unable to instantiate grocery4")
        }
        guard let grocery5 = Grocery(name: "Cereal", photo: photo5, quantity: 0) else {
            fatalError("Unable to instantiate grocery5")
        }
        guard let grocery6 = Grocery(name: "Bread", photo: photo6, quantity: 0) else {
            fatalError("Unable to instantiate grocery6")
        }
        guard let grocery7 = Grocery(name: "Cheese", photo: photo7, quantity: 0) else {
            fatalError("Unable to instantiate grocery7")
        }

        groceries += [grocery1, grocery2, grocery3, grocery4, grocery5, grocery6, grocery7]
    }
}
