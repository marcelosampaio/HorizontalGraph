//
//  ViewController.swift
//  HorizontalGraph
//
//  Created by Marcelo Sampaio on 01/03/19.
//  Copyright © 2019 Marcelo Sampaio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var horizontalGraph: HorizontalGraph!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set graph view background color
        self.horizontalGraph.leftGraphColor(UIColor.green)
        
    }


}

