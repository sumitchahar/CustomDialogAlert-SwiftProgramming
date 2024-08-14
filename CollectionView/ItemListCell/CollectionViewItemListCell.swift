//
//  CollectionViewItemListCell.swift
//  CollectionView
//
//  Created by Sumit on 09/08/24.
//

import UIKit

 class CollectionViewItemListCell: UICollectionViewCell {
 
     @IBOutlet weak var mainView:UIView!
     @IBOutlet weak var direction_details:UIView!

     @IBOutlet weak var image_view:UIImageView!
     
     
     var clickONSenderBtn: () -> Void = { }
     
     override func awakeFromNib() {
         super.awakeFromNib()
         mainView.layer.cornerRadius = 50
         direction_details.layer.cornerRadius = direction_details.frame.height/2
     }

     @IBAction func clickOnSenderBtn(_ sender:UIButton) {
          clickONSenderBtn()
     }
     
     
     func updatingImage(_ img:String) {
         image_view.image = UIImage(named: img)
     }
     
 }
