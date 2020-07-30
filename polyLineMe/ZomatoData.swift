//
//  ZomatoData.swift
//  polyLineMe
//
//  Created by Bhargava on 29/07/20.
//  Copyright © 2020 Bhargava. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON
class TomatoData:NSObject{
    static let service = TomatoData()
    func gettingData(baseUrl:String,seriveUrl:String,encoding:JSONEncoding, completionHandler : @escaping (_ dataResponse : AnyObject,_ err:String)->Void){
        AF.request(baseUrl+seriveUrl,method: .get,encoding: encoding ).responseJSON{ (response) in
            let httpRespone = response
            if httpRespone.response?.statusCode == 200{
                print(response.value! as Any)
            }else{
                print("Singam")
            }
            
        }

      }
}
