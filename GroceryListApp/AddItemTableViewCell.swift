//
//  AddItemTableViewCell.swift
//  GroceryListApp
//
//  Created by Ella on 2/27/17.
//  Copyright © 2017 Ellatronic. All rights reserved.
//

import UIKit

class AddItemTableViewCell: UITableViewCell {
    // MARK: - Properties
    @IBOutlet weak var addGroceryItemLabel: UILabel!
    @IBOutlet weak var addItemGroceryImageView: UIImageView!
    @IBOutlet weak var addItemButton: UIButton!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
