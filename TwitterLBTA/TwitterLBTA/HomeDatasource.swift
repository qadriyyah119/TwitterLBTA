//
//  HomeDatasource.swift
//  TwitterLBTA
//
//  Created by Brian Voong on 12/31/16.
//  Copyright © 2016 Lets Build That App. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
  
  let users: [User] = {
    let brianUser = User(name: "Qadriyyah T.", username: "@BrooklynAfro", bioText: "Jane of many trades: iOS (2020), Interior Design, Creative Director")
    
    let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Wenderlich is an iPhone developer and tweets on topics related to iPhone, software, and gaming. Check out our conference")
    
    let kindleUser = User(name: "Kindle User", username: "kindleuser", bioText: "This is test bio with extra long text to make sure the estimated frame calculations work. Aesthetic pop-up art party, blog thundercats umami yr sustainable selvage intelligentsia asymmetrical migas shoreditch flannel. Viral paleo cray deep v pug health goth narwhal irony literally.")
    
    return [brianUser, rayUser, kindleUser]
  }()
    
  let tweets: [Tweet] = {
    let brianUser = User(name: "Qadriyyah T.", username: "@BrooklynAfro", bioText: "Jane of many trades: iOS (2020), Interior Design, Creative Director")
    let tweet = Tweet(user: brianUser, message: "I love cheese, especially taleggio manchego. Cheese triangles manchego camembert de normandie cauliflower cheese camembert de normandie red leicester airedale macaroni cheese. Dolcelatte queso cheeseburger cheese strings roquefort goat lancashire taleggio. Halloumi airedale swiss the big cheese danish fontina cheese triangles halloumi cauliflower cheese. St. agur blue cheese cheese on toast cheese on toast blue castello stilton boursin fromage everyone loves. Hard cheese cheeseburger rubber cheese manchego stinking bishop cheese and biscuits cheese on toast the big cheese. Pecorino cheese and wine dolcelatte babybel cow the big cheese pecorino hard cheese. Who moved my cheese taleggio rubber cheese.")
    
    let tweet2 = Tweet(user: brianUser, message: "Cheeseburger goat cow. Everyone loves fondue cottage cheese cottage cheese croque monsieur port-salut cheeseburger cheese on toast. Everyone loves dolcelatte feta ricotta cheese and wine parmesan chalk and cheese cheese triangles. Cheese on toast cheesy grin cheddar cheesy grin parmesan danish fontina fromage.")
    
    return [tweet, tweet2]
  }()
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
      return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
      if indexPath.section == 1 {
        return tweets[indexPath.item]
      }
        return users[indexPath.item]
    }
  
    override func numberOfSections() -> Int {
      return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
      if section == 1 {
        return tweets.count
      }
        return users.count
    }
    
}
