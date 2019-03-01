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
        
        // left graph
        self.horizontalGraph.leftGraphColor(UIColor.green)
        self.horizontalGraph.leftGraphConstraints(leading: 0, trailing: self.horizontalGraph.bounds.width)
        
        // center graph
//        self.horizontalGraph.centerGraphColor(UIColor.yellow)
//        self.horizontalGraph.centerGraphConstraints(leading: self.horizontalGraph.bounds.width, trailing: 0)
//
//        // right graph
//        self.horizontalGraph.rightGraphColor(UIColor.brown)
//        self.horizontalGraph.rightGraphConstraints(leading:40.0, trailing: 60.0)
        
    }


}

