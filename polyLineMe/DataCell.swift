//
//  DataCell.swift
//  polyLineMe
//
//  Created by Bhargava on 30/07/20.
//  Copyright © 2020 Bhargava. All rights reserved.
//

import UIKit

class DataCell: UITableViewCell {
    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var dataLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
