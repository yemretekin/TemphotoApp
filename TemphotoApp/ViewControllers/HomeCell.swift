//
//  HomeCell.swift
//  TemphotoApp
//
//  Created by Emre Tekin on 1.06.2022.
//

import UIKit

class HomeCell: UITableViewCell {
    
    

    @IBOutlet weak var homeUsernameLabel: UILabel!
    @IBOutlet weak var homeImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
