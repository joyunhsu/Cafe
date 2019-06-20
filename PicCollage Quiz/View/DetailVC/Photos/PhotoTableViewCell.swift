//
//  PhotoTableViewCell.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/20.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var photoCollectionView: UICollectionView!
    
    var cafe: Cafe?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        photoCollectionView.dataSource = self
        photoCollectionView.delegate = self
        photoCollectionView.jh_registerCellWithNib(identifier: String(describing: PhotoCollectionViewCell.self), bundle: nil)
        photoCollectionView.jh_registerCellWithNib(identifier: String(describing: LastPhotoCollectionViewCell.self), bundle: nil)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func layoutView(cafe: Cafe) {
        
        self.cafe = cafe
        
        photoCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cafe = cafe else { return UICollectionViewCell() }
        
        switch indexPath.item {
            
        case 3:
            let cell = photoCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: LastPhotoCollectionViewCell.self), for: indexPath) as! LastPhotoCollectionViewCell
            
            cell.layoutView(image: cafe.photos[3], count: cafe.photos.count)
            return cell
            
        default:
            let cell = photoCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PhotoCollectionViewCell.self), for: indexPath) as! PhotoCollectionViewCell
            
            cell.layoutView(image: cafe.photos[indexPath.item])
            return cell
        }
    }
}

extension PhotoTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 158, height: 122)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
}
