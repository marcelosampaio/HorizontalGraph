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
        self.horizontalGraph.layer.borderColor = UIColor.black.cgColor
        self.horizontalGraph.layer.borderWidth = 1.5
        
        self.horizontalGraph.leftGraphColor(UIColor.green)
        self.horizontalGraph.lefGraphConstraints(leading: 0, trailing: self.horizontalGraph.bounds.width / 2.00)
        
    }


}

