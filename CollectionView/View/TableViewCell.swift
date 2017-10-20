//
//  TableViewCell.swift
//  CollectionView
//
//  Created by United Ankit on 20/10/17.
//  Copyright © 2017 Ankit. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    var imageArray = [String] ()
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self

        imageArray = ["1.jpeg","2.jpeg","3.jpeg","4.jpeg","5.jpeg","6.jpeg","7.jpeg","8.jpeg","9.jpeg","10.jpeg","1.jpeg"]
        // Initialization code
    }


    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as? CollectionViewCell
        {
            let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count)))
            cell.imageView.image = UIImage(named: imageArray[randomNumber])
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = CGSize(width: 120, height: 120)
        return size
    }
}
