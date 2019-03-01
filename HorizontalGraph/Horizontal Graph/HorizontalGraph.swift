//
//  HorizontalGraph.swift
//  HorizontalGraph
//
//  Created by Marcelo Sampaio on 01/03/19.
//  Copyright © 2019 Marcelo Sampaio. All rights reserved.
//

import UIKit

class HorizontalGraph: UIView {
    
    // MARK: - Outlets
    @IBOutlet var view: UIView!
    
    // left graph
    @IBOutlet weak var leftGraphView: UIView!
    
    // left graph constraints
    @IBOutlet weak var leftGraphLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var leftGraphTrailingConstraint: NSLayoutConstraint!
    

    // MARK: - Constructor
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        _ = Bundle.main.loadNibNamed("HorizontalGraph", owner: self, options: nil)?[0] as! UIView
        
        self.addSubview(view)
        view.frame = self.bounds
    }
    
    // MARK: - Left Graph Helper
    public func leftGraphColor(_ color: UIColor) {
        self.leftGraphView.backgroundColor = color
    }
    public func lefGraphConstraints(leading: CGFloat, trailing: CGFloat) {
        self.leftGraphLeadingConstraint.constant = leading
        self.leftGraphTrailingConstraint.constant = trailing
    }


}
