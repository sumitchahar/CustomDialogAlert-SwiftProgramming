
//  ViewController.swift
//  CollectionView
//  Created by Sumit on 09/08/24.

import UIKit

class ViewController: UIViewController {
    
    var alertNotificationDialog:AlertNotificationDialog?
    var isNotification:Bool = true
    let identifier = "cell"

    @IBOutlet weak var collection_view:UICollectionView!
    @IBOutlet weak var profile_view:UIView! {
        didSet { profile_view.layer.cornerRadius = profile_view.frame.height / 2 }
    }
    
    var array:[String] = ["Bg_image_One","img_two","img_three","img_two","Bg_image_One","img_three","img_two","Bg_image_One"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
             layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 20, right: 10)
             layout.minimumInteritemSpacing = 0
             layout.minimumLineSpacing = 0
             collection_view!.collectionViewLayout = layout

         let nib = UINib(nibName: "CollectionViewItemListCell", bundle: nil)
             collection_view.register(nib, forCellWithReuseIdentifier: identifier)
             alertNotificationDialog = AlertNotificationDialog(frame: .init(x: 10, y: 40, width: self.view.frame.width - 20, height: 240))
             self.view.addSubview(alertNotificationDialog ?? AlertNotificationDialog())
             alertNotificationDialog?.isHidden = isNotification
    }

 }


 extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
     
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath as IndexPath) as! CollectionViewItemListCell
            cell.clickONSenderBtn = { [weak self] in
                 self?.isNotification.toggle()
                 self?.alertNotificationDialog!.isHidden = self!.isNotification
           }
            cell.updatingImage(array[indexPath.row])
             return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let cellSize = CGSize(width: collectionView.bounds.width - 12, height: 320)
        return cellSize
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        let sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return sectionInset
    }

 }

