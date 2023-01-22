//
//  GradientView.swift
//  iOS-trader
//
//  Created by danish on 21/01/23.
//

import UIKit

@IBDesignable
final class GradientView: UIView {
    @IBInspectable var startColor: UIColor = UIColor.clear
    @IBInspectable var endColor: UIColor = UIColor.clear

    override func draw(_ rect: CGRect) {
        let width: CGFloat = CGRectGetWidth(self.bounds);
        let height: CGFloat = CGRectGetHeight(self.bounds);
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = CGRect(x: CGFloat(0),
                                y: CGFloat(0),
                                width: width,
                                height: height)
        gradient.colors = [startColor.cgColor, startColor.cgColor, endColor.cgColor]
        gradient.zPosition = -1
        layer.addSublayer(gradient)
    }
}
