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
    
    @IBAction func backBtn(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        galleryCollectionView.jh_registerCellWithNib(identifier: String(describing: GalleryCollectionViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: OverviewTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: InfoTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: FeatureTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: RatingsTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: ReviewTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: SecondaryBtnTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: InquiryTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: SectionHeaderTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: PhotoTableViewCell.self), bundle: nil)

    }

}

extension DetailViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0: return 4
        case 1: return 6
        case 2: return 2
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: OverviewTableViewCell.self), for: indexPath)
                guard let overviewCell = cell as? OverviewTableViewCell else { return cell }
                return overviewCell
                
            case 3:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FeatureTableViewCell.self), for: indexPath)
                guard let featureCell = cell as? FeatureTableViewCell else { return cell }
                return featureCell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: InfoTableViewCell.self), for: indexPath)
                guard let infoCell = cell as? InfoTableViewCell else { return cell }
                return infoCell
            }
            
        } else if indexPath.section == 1 {
            
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SectionHeaderTableViewCell.self), for: indexPath) as! SectionHeaderTableViewCell
                return cell
                
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RatingsTableViewCell.self), for: indexPath) as! RatingsTableViewCell
                return cell
                
            case 4:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SecondaryBtnTableViewCell.self), for: indexPath) as! SecondaryBtnTableViewCell
                return cell
                
            case 5:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: InquiryTableViewCell.self), for: indexPath) as! InquiryTableViewCell
                return cell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ReviewTableViewCell.self), for: indexPath) as! ReviewTableViewCell
                return cell
            }
            
        } else if indexPath.section == 2 {
            
            switch indexPath.row {
                
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SectionHeaderTableViewCell.self), for: indexPath) as! SectionHeaderTableViewCell
                return cell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PhotoTableViewCell.self), for: indexPath)
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            
            switch indexPath.row {
            case 0: return 616
            case 3: return 110
            default: return 66
            }
            
        } else if indexPath.section == 1 {
            
            switch indexPath.row {
            case 0: return 70
            case 1: return 182
            case 4: return 44
            case 5: return 200
            default: return 100
            }
        } else if indexPath.section == 2 {
            
            switch indexPath.row {
            case 0: return 70
            default: return 214
            }
        }
        
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {

        return 3
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
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let view = SegmentHeaderView(coder: NSCoder)
//
//        return view
//    }
    
    
}
