//
//  HomeDatasourceController.swift
//  TwitterLBTA
//
//  Created by Qadriyyah Griffin on 3/4/20.
//  Copyright © 2020 Lets Build That App. All rights reserved.
//

import LBTAComponents

// responsible for laying out the header, cells, and subviews
class HomeDatasourceController: DatasourceController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView?.backgroundColor = UIColor(r: 232, g: 236, b: 241)
    
    setupNavigationBarItems()
    
    let homeDatasource = HomeDatasource()
    self.datasource = homeDatasource
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    if let user = self.datasource?.item(indexPath) as? User {
      
      // let's get an estimation of the height of our cell based on user.biotext
      
      let approximateWidthOfBioTextView = view.frame.width - 12 - 50 - 12 - 2
      let size = CGSize(width: approximateWidthOfBioTextView, height: 1000)
      let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]
      
      let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
      
      return CGSize(width: view.frame.width, height: estimatedFrame.height + 66)
    }
    
    return CGSize(width: view.frame.width, height: 200)
  }

  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    if section == 1 {
      return .zero
    }
    return CGSize(width: view.frame.width, height: 50)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    if section == 1 {
      return .zero
    }
    return CGSize(width: view.frame.width, height: 64)
  }
  
}
