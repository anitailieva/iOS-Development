//
//  TriangleView.swift
//  Exercise1
//
//  Created by Anita Ilieva on 28/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit

class TriangleView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func draw(_ rect: CGRect) {
        
        //// Star Drawing
        let starPath = UIBezierPath()
        starPath.move(to: CGPoint(x: frame.minX + 0.66095 * frame.width, y: frame.minY + 0.00000 * frame.height))
        starPath.addLine(to: CGPoint(x: frame.minX + 0.66095 * frame.width, y: frame.minY + 0.31840 * frame.height))
        starPath.addLine(to: CGPoint(x: frame.minX + 0.99872 * frame.width, y:  frame.minY + 0.38093 * frame.height))
        starPath.addLine(to: CGPoint(x: frame.minX + 0.76042 * frame.width, y: frame.minY + 0.64024 * frame.height))
        starPath.addLine(to: CGPoint(x: frame.minX + 0.80823 * frame.width, y: frame.minY + 0.99728 * frame.height))
        starPath.addLine(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 0.83915 * frame.height))
        starPath.addLine(to: CGPoint(x: frame.minX + 0.19177 * frame.width, y: frame.minY + 0.99728 * frame.height))
        starPath.addLine(to: CGPoint(x: frame.minX + 0.23958 * frame.width, y: frame.minY + 0.64024 * frame.height))
        starPath.addLine(to: CGPoint(x: frame.minX + 0.00128 * frame.width, y: frame.minY + 0.38093 * frame.height))
        starPath.addLine(to: CGPoint(x: frame.minX + 0.33905 * frame.width, y: frame.minY + 0.31840 * frame.height))
        starPath.close()
        starPath.fill()
        
        
        
        
    }
    
}
