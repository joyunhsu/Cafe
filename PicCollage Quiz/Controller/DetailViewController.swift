//
//  DetailViewController.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/19.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var galleryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        galleryCollectionView.jh_registerCellWithNib(
            identifier: String(describing: GalleryCollectionViewCell.self),
            bundle: nil)
        
        tableView.jh_registerCellWithNib(
            identifier: String(describing: OverviewTableViewCell.self),
            bundle: nil)

    }

}

extension DetailViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: OverviewTableViewCell.self), for: indexPath)
        
        guard let overviewCell = cell as? OverviewTableViewCell else { return cell }
        
        return overviewCell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 4
    }
}

extension DetailViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = galleryCollectionView.dequeueReusableCell(
            withReuseIdentifier: String(describing: GalleryCollectionViewCell.self),
            for: indexPath)
        
        guard let galleryCell = cell as? GalleryCollectionViewCell else { return cell }
        
        return galleryCell
    }
    
    
}
