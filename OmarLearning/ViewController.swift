//
//  ViewController.swift
//  OmarLearning
//
//  Created by Omar on 27/10/2018.
//  Copyright © 2018 wifiesta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mMyCollectionView: UICollectionView!
    var mArray: [ListItemVM] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createListOfItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createListOfItems(){
        var item: ListItemVM = ListItemVM(mUserName: "Conch", mDateString: "2018", mImageURL: "https://lafeber.com/pet-birds/wp-content/uploads/2017/09/Parrot-300x300.jpg")
        var item2: ListItemVM = ListItemVM(mUserName: "Of the", mDateString: "2017", mImageURL: "https://lafeber.com/pet-birds/wp-content/uploads/2017/09/Parrot-300x300.jpg")
        var item3: ListItemVM = ListItemVM(mUserName: "Parrot", mDateString: "2017", mImageURL: "https://lafeber.com/pet-birds/wp-content/uploads/2017/09/Parrot-300x300.jpg")
        mArray = [item, item2,item3]
    }

    
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "my_cell", for: indexPath) as! MyCollectionViewCell
        cell.setValues(item: mArray[indexPath.row])
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let myCellSize = CGSize(width: collectionView.frame.size.width/2, height: 48)
        return myCellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}







