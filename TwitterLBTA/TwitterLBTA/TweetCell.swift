//
//  TweetCell.swift
//  TwitterLBTA
//
//  Created by Qadriyyah Griffin on 3/5/20.
//  Copyright © 2020 Lets Build That App. All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
  
  override var datasourceItem: Any? {
    didSet {
      guard let tweet = datasourceItem as? Tweet else { return }
      
      let attributedText = NSMutableAttributedString(string: tweet.user.name, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)])
      
      let usernameString = "  \(tweet.user.username)\n"
      attributedText.append(NSAttributedString(string: usernameString, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.gray]))
      
      let paragraphStyle = NSMutableParagraphStyle()
      paragraphStyle.lineSpacing = 4
      let range = NSMakeRange(0, attributedText.string.count)
      attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: range)
      
      attributedText.append(NSAttributedString(string: tweet.message, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]))
      
      messageTextView.attributedText = attributedText
    }
  }
  
  let messageTextView: UITextView = {
    let tv = UITextView()
    tv.text = "SOME SAMPLE TEXT"
    return tv
  }()
  
  let profileImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "profile_image.jpg")
    imageView.layer.cornerRadius = 5
    imageView.layer.masksToBounds = true
    return imageView
  }()
  
  override func setupViews() {
    super.setupViews()
    
    separatorLineView.isHidden = false
    separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
    
    backgroundColor = .white
    
    addSubview(profileImageView)
    addSubview(messageTextView)
    
    profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
    
    messageTextView.anchor(self.topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 4, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
  }
}
