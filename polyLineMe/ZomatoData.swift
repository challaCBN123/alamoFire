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
    func gettingData(baseUrl:String,seriveUrl:String,encoding:JSONEncoding,headerParameters:NSDictionary,view: UIView, completionHandler : @escaping (_ dataResponse : AnyObject,_ err:String)->Void){
        
        AF.request(baseUrl+seriveUrl,method: .get,encoding: encoding,headers: headerParameters as? HTTPHeaders).responseJSON{ (response) in
            switch response.result{
                
            case .success(_):
                if response.value != nil{
                      completionHandler(response.value! as AnyObject, "")
                    //print(response.value!)
                }
              
                break
            case .failure(_):
                completionHandler(Error.self as AnyObject, "")
                print("error")
                break
            }
            
            
        }

      }
}
