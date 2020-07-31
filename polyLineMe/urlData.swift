//
//  urlData.swift
//  polyLineMe
//
//  Created by Bhargava on 31/07/20.
//  Copyright © 2020 Bhargava. All rights reserved.
//

import Foundation
import UIKit
struct usersData : Decodable{
var id : String?
var userId : String?
var title : String?
}
class userData : Decodable{
    
    var id : String?
    var userId : String?
    var title : String?
    init(jsonObject:[String:Any]) {
       
        self.id = jsonObject["id"] as? String ?? ""
        self.userId = jsonObject["userId"] as? String ?? ""
        self.title = jsonObject["title"] as? String ?? ""
    }
  
   
}
class User: Decodable {

    var id: String
    var userId: String
    var title: String

    enum CodingKeys: String, CodingKey {
        case id
        case userId
        case title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.title = try container.decode(String.self, forKey: .title)
    }
}
