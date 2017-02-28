//
//  GroceryListTableViewCell.swift
//  GroceryListApp
//
//  Created by Ella on 2/27/17.
//  Copyright © 2017 Ellatronic. All rights reserved.
//

import UIKit

class GroceryListTableViewCell: UITableViewCell {
    @IBOutlet weak var groceryImage: UIImageView!
    @IBOutlet weak var groceryLabel: UILabel!
    @IBOutlet weak var groceryQuantity: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
