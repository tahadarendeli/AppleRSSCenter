//
//  Content.swift
//  ClassProject
//
//  Created by Mentor on 28.04.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit

class Content: NSObject {
    
    let id : String
    let name: String
    let title : String
    let summary : String
    let content : String
    let link : String

    init (id : String, name: String, title : String, summary : String, content : String, link :  String){
        self.id = id
        self.name = name
        self.title = title
        self.summary = summary
        self.content = content
        self.link = link
    }
}
