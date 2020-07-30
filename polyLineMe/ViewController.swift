//
//  ViewController.swift
//  polyLineMe
//
//  Created by Bhargava on 24/07/20.
//  Copyright © 2020 Bhargava. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController{
   
    @IBOutlet weak var tblView: UITableView!
    // MARK :- URL
    var baseUrl = "http://jsonplaceholder.typicode.com/albums"
    let endKey = ""
    // MARK :- Zomato Api
     let baseURLString = "https://developers.zomato.com/api/v2.1/geocode?lat=16.515099&lon=80.632095"
       let apiKey = "c56ce01dafd40a68e12e336e50d91e0b"
       
   
    override func viewDidLoad() {
        super.viewDidLoad()
        TomatoData.service.gettingData(baseUrl: baseUrl,seriveUrl:endKey, encoding:JSONEncoding.default) { (data, err) in
            
        }
       
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "DataCell", for: indexPath) as! DataCell
//        let dict = titleDict[indexPath.row]
//        cell.titleLbl.text = dict.title
//        cell.idLbl.text = dict.id
//        cell.dataLbl.text = dict.userId
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
