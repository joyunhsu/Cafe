//
//  ListViewController.swift
//  PicCollage Quiz
//
//  Created by Jo Yun Hsu on 2019/6/19.
//  Copyright © 2019 Jo Yun Hsu. All rights reserved.
//

import UIKit
import Foundation

let tags: [String] = ["WIFI", "POWER PLUG", "FOOD", "NO TIME LIMITS"]

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tagsCollectionVIew: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.jh_registerCellWithNib(
            identifier: String(describing: ListTableViewCell.self),
            bundle: nil)
        
        self.navigationController?.isNavigationBarHidden = true
        
        let path = Bundle.main.path(forResource: "CafeData", ofType: "json")
        
        let url = URL(fileURLWithPath: path!)
        
        let data = try! Data(contentsOf: url)
        
        print(data)
        
        let obj = try! JSONSerialization.jsonObject(with: data, options: .allowFragments)
        
        print(obj)
        
        let decoder = JSONDecoder()
        
        let cafeData: CafeData = try! decoder.decode(CafeData.self, from: data)
        
        print(cafeData)
    }

}

extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "DetailSegue", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        let label = UILabel()
        label.text = "Sorted by Distance"
        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        label.textColor = UIColor(red: 65/255, green: 108/255, blue: 207/255, alpha: 1)
        label.frame = CGRect(x: 20, y: 5, width: 200, height: 18)
        view.addSubview(label)
        
        return view
    }
    
}

extension ListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ListTableViewCell.self), for: indexPath)
        
        guard let listCell = cell as? ListTableViewCell else { return cell }
        
        listCell.selectionStyle = .none
        
        return listCell
    }
    
}

extension ListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return tags.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = tagsCollectionVIew.dequeueReusableCell(withReuseIdentifier: "tagCell", for: indexPath) as! TagCollectionViewCell
        
        var bgColor = [UIColor](repeating: .clear, count: 4)
        bgColor[2] = UIColor.Blue!
        
        var textColor = [UIColor](repeating: UIColor.B2!, count: 4)
        textColor[2] = .white
        
        cell.layoutView(
            text: tags[indexPath.item],
            color: bgColor[indexPath.item],
            textColor: textColor[indexPath.item])
        
        return cell
    }
    
}

extension ListViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let labelWidth = tags[indexPath.item].size(withAttributes: [
                NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)
            ]).width + 24
        
        return CGSize(width: labelWidth, height: 24)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    }
}
