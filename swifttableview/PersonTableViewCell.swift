//
//  PersonTableViewCell.swift
//  swifttableview
//
//  Created by Bill Martensson on 2020-09-15.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
