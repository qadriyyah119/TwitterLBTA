//
//  HomeController.swift
//  TwitterLBTA
//
//  Created by Qadriyyah Griffin on 2/24/20.
//  Copyright © 2020 Qadriyyah Thomas. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController {
  
  let cellId = "cellId"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView?.backgroundColor = .green
    collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 4
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    cell.backgroundColor = .blue
    return cell
  }
}
