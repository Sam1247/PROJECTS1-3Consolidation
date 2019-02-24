//
//  ViewController.swift
//  PROJECTS1-3Consolidation
//
//  Created by Abdalla Elsaman on 2/24/19.
//  Copyright © 2019 Dumbies. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasSuffix("@3x.png") {
                pictures.append(item)
            }
        }
        for picture in pictures {
            print(picture)
        }
    }


}

