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
    @IBOutlet weak var centerGraphView: UIView!
    @IBOutlet weak var rightGraphView: UIView!
    
    // left graph constraints
    @IBOutlet weak var leftGraphLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var leftGraphTrailingConstraint: NSLayoutConstraint!
    
    // center graph constraints
    @IBOutlet weak var centerGraphLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var centerGraphTrailingConstraint: NSLayoutConstraint!
    
    // right graph constraints
    @IBOutlet weak var rightGraphLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightGraphTrailingConstraint: NSLayoutConstraint!
    
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
    public func leftGraphConstraints(leading: CGFloat, trailing: CGFloat) {
        self.leftGraphLeadingConstraint.constant = leading
        self.leftGraphTrailingConstraint.constant = trailing
    }

    // MARK: - Center Graph Helper
    public func centerGraphColor(_ color: UIColor) {
        self.leftGraphView.backgroundColor = color
    }
    public func centerGraphConstraints(leading: CGFloat, trailing: CGFloat) {
        self.centerGraphLeadingConstraint.constant = leading
        self.centerGraphTrailingConstraint.constant = trailing
    }

    // MARK: - Right Graph Helper
    public func rightGraphColor(_ color: UIColor) {
        self.leftGraphView.backgroundColor = color
    }
    public func rightGraphConstraints(leading: CGFloat, trailing: CGFloat) {
        self.rightGraphLeadingConstraint.constant = leading
        self.rightGraphTrailingConstraint.constant = trailing
    }
    
}
