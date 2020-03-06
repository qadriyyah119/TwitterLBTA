//
//  HomeDatasourceController+Navbar.swift
//  TwitterLBTA
//
//  Created by Qadriyyah Griffin on 3/5/20.
//  Copyright © 2020 Lets Build That App. All rights reserved.
//

import UIKit

extension HomeDatasourceController {
  
  func setupNavigationBarItems() {
    setupLeftNavItem()
    setupRightNavItems()
    setupReminingNavItems()
  }
  
  private func setupReminingNavItems() {
    
    let titleImageView = UIImageView(image: UIImage(named: "title_icon"))
    titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    titleImageView.contentMode = .scaleAspectFit
    
    navigationItem.titleView = titleImageView
    
    navigationController?.navigationBar.backgroundColor = .white
    navigationController?.navigationBar.isTranslucent = false
    
    navigationController?.navigationBar.shadowImage = UIImage()
    navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    
    let navBarSeparatorView = UIView()
    navBarSeparatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
    view.addSubview(navBarSeparatorView)
    navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
  }
  
  private func setupLeftNavItem() {
    
    let followButton = UIButton(type: .system)
    followButton.setImage(UIImage(named: "follow"), for: .normal)
    followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    navigationItem.leftBarButtonItem = UIBarButtonItem(customView:
      followButton)
  }
  
  private func setupRightNavItems() {
    
    let searchButton = UIButton(type: .system)
    searchButton.setImage(UIImage(named: "search"), for: .normal)
    searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    
    let composeButton = UIButton(type: .system)
    composeButton.setImage(UIImage(named: "compose"), for: .normal)
    composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    
    navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
  }
}
