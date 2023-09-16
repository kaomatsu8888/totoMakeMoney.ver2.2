//
//  StadiumTableViewCell.swift
//  totoMakeMoney.ver2.2
//
//  Created by kaoru matsunaga on 2023/09/16.
//

import UIKit

class StadiumTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var iconImageView: UIImageView!
    
    func setup(icon: UIImage, name: String, age: Int) {
        nameLabel.text = name
         iconImageView.image = icon  // この行は不要または修正が必要です
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
