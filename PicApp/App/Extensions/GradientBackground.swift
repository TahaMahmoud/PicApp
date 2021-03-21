//
//  MenuBackground.swift
//  Human
//
//  Created by mac on 9/26/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import UIKit

@IBDesignable class GradientBackground: UIView {

    @IBInspectable var greenColor: Bool = true {
        didSet {
            applyGradient()
        }
    }
    
    @IBInspectable var vertical: Bool = true {
        didSet {
            updateGradientDirection()
        }
    }

    lazy var greenGradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [UIColor.fernGreen.cgColor, UIColor.tealGreen.cgColor, UIColor.denim.cgColor]
        layer.startPoint = CGPoint.zero
        return layer
    }()

    lazy var beigeGradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [UIColor.denim.cgColor, UIColor.tealGreen.cgColor, UIColor.fernGreen.cgColor]
        layer.startPoint = CGPoint.zero
        return layer
    }()
    
    //MARK: -

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        applyGradient()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        applyGradient()
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        applyGradient()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        updateGradientFrame()
    }

    //MARK: -

    func applyGradient() {
        updateGradientDirection()
        if greenColor {
            layer.sublayers = [greenGradientLayer]
        }
        else {
            layer.sublayers = [beigeGradientLayer]
        }
    }

    func updateGradientFrame() {
        if greenColor {
            greenGradientLayer.frame = bounds
        }
        else {
            beigeGradientLayer.frame = bounds
        }

    }

    func updateGradientDirection() {
        if greenColor {
            greenGradientLayer.endPoint = vertical ? CGPoint(x: 0, y: 1) : CGPoint(x: 1, y: 0)
        }
        else {
            beigeGradientLayer.endPoint = vertical ? CGPoint(x: 0, y: 1) : CGPoint(x: 1, y: 0)
        }
    }
}
