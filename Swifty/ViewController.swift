//
//  ViewController.swift
//  Swifty
//
//  Created by Matt Deuschle on 5/1/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Alamofire.request(.GET, "http://dev-hl.sherlockpipeline.com/api/getFilterItems").responseJSON { (response) in

            if let value = response.result.value {

                let json = JSON(value)

                for i in 1...20 {

                    let id = json["\(i)"].dictionaryValue

                    if let height = id["height"]?.stringValue {

                        print(height)
                    }
                }
            }
        }
    }
}

