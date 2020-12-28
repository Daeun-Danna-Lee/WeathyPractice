//
//  SelectTagVC.swift
//  weathyPractice
//
//  Created by DANNA LEE on 2020/12/29.
//

import UIKit

struct Tag {
    var name: String
    var isSelected: Bool
}

class SelectTagVC: UIViewController {

    @IBOutlet var tagCollectionView: UICollectionView!
    
    var tags : [Tag] = [
        Tag(name: " + ", isSelected: false),
        Tag(name: "후드티", isSelected: false),
        Tag(name: "반팔티", isSelected: false),
        Tag(name: "니트", isSelected: false),
        Tag(name: "기모후드티", isSelected: false),
        Tag(name: "폴로니트", isSelected: false),
        Tag(name: "목폴라", isSelected: false),
        Tag(name: "히트텍", isSelected: false),
        Tag(name: "기모맨투맨(흰색)", isSelected: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tagCollectionView.dataSource = self
        tagCollectionView.delegate = self
        let layout = TagFlowLayout()
        layout.estimatedItemSize = CGSize(width: 140, height: 40)
        tagCollectionView.collectionViewLayout = layout
        // Do any additional setup after loading the view.
    }
}

extension SelectTagVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tags.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCVC", for: indexPath) as? TagCVC
        else {
            return UICollectionViewCell()
        }
        
        if tags[indexPath.item].isSelected == false {
            cell.tagLabel.text = tags[indexPath.item].name
            cell.tagLabel.textColor = .black
            cell.tagLabel.preferredMaxLayoutWidth = collectionView.frame.width - 32
            cell.layer.borderColor = UIColor.lightGray.cgColor
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 20

        } else {
            cell.tagLabel.text = tags[indexPath.item].name
            cell.tagLabel.textColor = UIColor(red: 71/255, green: 192/255, blue: 172/255, alpha: 1)
            cell.tagLabel.preferredMaxLayoutWidth = collectionView.frame.width - 32
            cell.layer.borderColor = UIColor(red: 71/255, green: 192/255, blue: 172/255, alpha: 1).cgColor
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 20
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: false)
        tags[indexPath.item].isSelected = !tags[indexPath.item].isSelected
        self.tagCollectionView.reloadData()
    }
}

extension SelectTagVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 200, height: 30)
    }
}
