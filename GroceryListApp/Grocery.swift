//
//  Grocery.swift
//  GroceryListApp
//
//  Created by Ella on 2/27/17.
//  Copyright © 2017 Ellatronic. All rights reserved.
//

import UIKit

class Grocery {
    // MARK: Properties

    var name: String
    var photo: UIImage?
    var quantity: Int

    //MARK: Initialization

    init?(name: String, photo: UIImage?, quantity: Int) {

        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }

        // The quantity must be between 0 and 99 inclusively
        guard (quantity >= 0) && (quantity <= 5) else {
            return nil
        }

        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.quantity = quantity
    }
}
