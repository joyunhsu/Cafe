//
//  DetailViewController.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/19.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var cafe: Cafe?
    var isMarked = true
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var galleryCollectionView: UICollectionView!
    @IBOutlet weak var galleryIndicatorLabel: UILabel!
    @IBOutlet weak var markBtn: UIButton!
    
    @IBAction func markBtnPressed(_ sender: UIButton) {
        
        isMarked = !isMarked
        
        if isMarked {
            markBtn.isSelected = true
        } else {
            markBtn.isSelected = false
        }
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isMarked = cafe!.isMarked
        
        if isMarked {
            markBtn.isSelected = true
        } else {
            markBtn.isSelected = false
        }
        
        galleryCollectionView.jh_registerCellWithNib(identifier: String(describing: GalleryCollectionViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: OverviewTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: InfoTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: FeatBtnTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: RatingsTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: ReviewTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: SecondaryBtnTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: InquiryTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: SectionHeaderTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: PhotoTableViewCell.self), bundle: nil)
        
        tableView.jh_registerCellWithNib(identifier: String(describing: ListTableViewCell.self), bundle: nil)
        
        galleryIndicatorLabel.text = "1/\(cafe!.photos.count)"
    }

}

extension DetailViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0: return 4
        case 1: return 6
        case 2: return 2
        default: return 4
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cafe = cafe else { return UITableViewCell() }
        
        if indexPath.section == 0 {
            
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: OverviewTableViewCell.self), for: indexPath) as! OverviewTableViewCell
                cell.layoutView(cafe: cafe)
                return cell
                
            case 3:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FeatBtnTableViewCell.self), for: indexPath) as! FeatBtnTableViewCell
                cell.layoutView(cafe: cafe)
                return cell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: InfoTableViewCell.self), for: indexPath) as! InfoTableViewCell
                
                let overview = cafe.overview
                if indexPath.row == 1 {
                    cell.layoutView(title: "Phone", info: overview.phone)
                } else {
                    cell.layoutView(title: "Website", info: overview.website)
                }
                
                return cell
            }
            
        } else if indexPath.section == 1 {
            
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SectionHeaderTableViewCell.self), for: indexPath) as! SectionHeaderTableViewCell
                cell.layoutView(title: "Reviews")
                return cell
                
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RatingsTableViewCell.self), for: indexPath) as! RatingsTableViewCell
                cell.layoutView(cafe: cafe)
                return cell
                
            case 4:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SecondaryBtnTableViewCell.self), for: indexPath) as! SecondaryBtnTableViewCell
                return cell
                
            case 5:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: InquiryTableViewCell.self), for: indexPath) as! InquiryTableViewCell
                return cell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ReviewTableViewCell.self), for: indexPath) as! ReviewTableViewCell
                
                if indexPath.row == 2 {
                    cell.layoutView(reviewContent: cafe.reviews.displayReview[0])
                } else {
                    cell.layoutView(reviewContent: cafe.reviews.displayReview[1])
                }
                return cell
            }
            
        } else if indexPath.section == 2 {
            
            switch indexPath.row {
                
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SectionHeaderTableViewCell.self), for: indexPath) as! SectionHeaderTableViewCell
                cell.layoutView(title: "Photos")
                return cell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PhotoTableViewCell.self), for: indexPath) as! PhotoTableViewCell
                cell.layoutView(cafe: cafe)
                return cell
            }
            
        } else {
            
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SectionHeaderTableViewCell.self), for: indexPath)
                return cell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ListTableViewCell.self), for: indexPath) as! ListTableViewCell
                
                cell.layoutView(suggestion: cafe.suggestions[indexPath.row - 1])
                return cell
            }
            
        }
    
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
            
        } else {
            switch indexPath.row {
            case 0: return 70
            default: return 118
            }
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {

        return 4
    }
    
}

extension DetailViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        guard let photos = cafe?.photos else { return 0 }
        
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = galleryCollectionView.dequeueReusableCell(
            withReuseIdentifier: String(describing: GalleryCollectionViewCell.self),
            for: indexPath) as! GalleryCollectionViewCell
        
        guard let cafe = cafe else { return cell }
        
        cell.layoutView(photo: cafe.photos[indexPath.item])
        
        if indexPath.item % 2 == 0 {
            cell.backgroundColor = UIColor.Blue!
        } else {
            cell.backgroundColor = UIColor.B2!
        }
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let screenWidth = UIScreen.main.bounds.width
        
        let page = lroundf(Float(scrollView.contentOffset.x / screenWidth)) + 1
        
        galleryIndicatorLabel.text = "\(page)/\(cafe!.photos.count)"
    }
}

extension DetailViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = view.frame.width
        
        return CGSize(width: screenWidth, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
}
