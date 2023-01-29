//
//  SearchItemCell.swift
//  iOS-trader
//
//  Created by danish on 27/01/23.
//

import UIKit

class SearchItemCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var itemView: UIView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var imagr: UIImageView!
    
    
}
