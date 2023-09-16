//
//  DetailTableViewCell.swift
//  totoMakeMoney.ver2.2
//
//  Created by kaoru matsunaga on 2023/09/16.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var stdiumimage: UIImageView!
    
    @IBOutlet weak var stadiumexp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
