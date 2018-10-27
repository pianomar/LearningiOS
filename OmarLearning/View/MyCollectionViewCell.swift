//
//  MyCollectionViewCell.swift
//  OmarLearning
//
//  Created by Omar on 27/10/2018.
//  Copyright © 2018 wifiesta. All rights reserved.
//

import UIKit
import SDWebImage

class MyCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var mUserImage: UIImageView!
    @IBOutlet weak var mUsernameLabel: UILabel!
    @IBOutlet weak var mDateLabel: UILabel!
    
    func setValues(item:ListItemVM) {
        mUsernameLabel.text = item.mUserName
        mDateLabel.text = item.mDateString
        mUserImage.sd_setImage(with: URL(string: item.mImageURL), placeholderImage: UIImage(named: "placeholder.png"))

    }
}
