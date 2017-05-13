//
//  AlbumContentDataSource.swift
//  ClassProject
//
//  Created by Mentor on 11.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireRSSParser

@objc protocol AlbumContentDataDelegate {
    @objc optional func contentListLoaded()
    //@objc optional func contentDetailLoaded(title: Content)
}

class ContentDataSource: NSObject {

    var contentArray : [Content] = []
    var selectedGenre : String = ""
    var selectedType : String!
    
    var delegate : AlbumContentDataDelegate?
    
    func loadContentList() {
        contentArray.removeAll()
        Alamofire.request("https://itunes.apple.com/us/rss/\(selectedType!)/limit=25/\(selectedGenre)xml").responseRSS(){ response in
            
            if let feed: RSSFeed = response.result.value {
                var i = 0
                for content in feed.items{
                    
                    //Create new player from the received data
                    let newContent = Content(id: content.id!, name: content.name!, title :  content.title! , summary :  "" , content: content.content!, link: content.image!)
                    
                    //Add the player to the array
                    self.contentArray.append(newContent)
                    i = i + 1
                }
                self.delegate?.contentListLoaded!()
            }
                
            else {
                print("invalid")
                return
            }
            
        }
    }

}
