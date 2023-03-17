//
//  ViewController.swift
//  collection view
//
//  Created by monil sojitra on 13/02/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var arr = Array<String>()
    @IBOutlet weak var cw: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...20{
            arr.append(i.description)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .gray
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: 200, height: 200)
    }

}

