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
    
    // Graph Values
    private var graphLeftValue : CGFloat = 10.00
    private var graphCenterValue : CGFloat = 30.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.configHorizontalGraph(valueLeft: self.graphLeftValue, valueCenter: self.graphCenterValue)
    }
    
    // MARK: - Constraints Helper
    private func configHorizontalGraph(valueLeft: CGFloat, valueCenter: CGFloat) {
        
        // left values
        let sizeLeft : CGFloat = (valueLeft * self.horizontalGraph.bounds.width) / 100.00
        let leadingLeft : CGFloat = 0.00
        let trailingLeft : CGFloat = 0.00
        
        // center values
        let sizeCenter : CGFloat = (valueCenter * self.horizontalGraph.bounds.width) / 100.00
        let leadingCenter : CGFloat = sizeLeft
        let trailingCenter : CGFloat = 0

        // right values
        let leadingRight : CGFloat = sizeLeft + sizeCenter
        let trailingRight : CGFloat = 0
        
        // left graph
        self.horizontalGraph.leftGraphColor(UIColor.red)
        self.horizontalGraph.leftGraphConstraints(leading: leadingLeft, trailing: trailingLeft)
        
        // center graph
        self.horizontalGraph.centerGraphColor(UIColor.yellow)
        self.horizontalGraph.centerGraphConstraints(leading: leadingCenter, trailing: trailingCenter)
        
        // right graph
        self.horizontalGraph.rightGraphColor(UIColor.green)
        self.horizontalGraph.rightGraphConstraints(leading: leadingRight, trailing: trailingRight)

    }

    
    // MARK: - Rotation Helper
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        coordinator.animate(alongsideTransition: { (coordinatorContext) in
            // coordinator transition
        }) { (completionContext) in
            // completion
            self.configHorizontalGraph(valueLeft: self.graphLeftValue, valueCenter: self.graphCenterValue)
            self.horizontalGraph.setNeedsUpdateConstraints()

        }
        
    }
}

