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
        
        // ------------------------
        // left value
        let valueLeft : CGFloat = 100.00      // 50%
        let sizeLeft : CGFloat = (valueLeft * self.horizontalGraph.bounds.width) / 100.00
        let leadingLeft : CGFloat = 0.00
        let trailingLeft : CGFloat = 0.00

        // center value
        let valueCenter : CGFloat = 50.00      // 20%
        let sizeCenter : CGFloat = (valueCenter * self.horizontalGraph.bounds.width) / 100.00
        let leadingCenter : CGFloat = sizeLeft
        let trailingCenter : CGFloat = 0


        // right value
//        let valueRight : CGFloat = 30.00      // 20%
//        let sizeRight : CGFloat = (valueRight * self.horizontalGraph.bounds.width) / 100.00
        let leadingRight : CGFloat = sizeLeft + sizeCenter
        let trailingRight : CGFloat = 0
        
        
        
        // -------------------------
        
        
        
        
        
        // left graph
        self.horizontalGraph.leftGraphColor(UIColor.green)
        self.horizontalGraph.leftGraphConstraints(leading: leadingLeft, trailing: trailingLeft)
        
        // center graph
        self.horizontalGraph.centerGraphColor(UIColor.red)
        self.horizontalGraph.centerGraphConstraints(leading: leadingCenter, trailing: trailingCenter)

        // right graph
        self.horizontalGraph.rightGraphColor(UIColor.brown)
        self.horizontalGraph.rightGraphConstraints(leading: leadingRight, trailing: trailingRight)
        
    }


}

