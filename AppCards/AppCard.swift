//
//  AppCard.swift
//  AppCards
//
//  Created by Benjamin MacDonald on 2016-05-11.
//  Copyright © 2016 Benjamin MacDonald. All rights reserved.
//

import Foundation
import UIKit

class AppCard: UIView {
    
    let cornerRadius: CGFloat = 25
    let offsetWidth: CGFloat = 0
    let offsetHeight: CGFloat = 3
    let screenSize: CGRect = UIScreen.mainScreen().bounds
    
    func addTopImage(image: UIImageView){
        
        let maskView = CAShapeLayer()
        maskView.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).CGPath
        image.frame = CGRectMake(0, -2, image.bounds.width, image.bounds.height)
        image.layer.mask = maskView
        self.addSubview(image)
    }
    
    @nonobjc
    func addTopImage(image: UIImage){
        let topImage = UIImageView(image: image)
        let maskView = CAShapeLayer()
        maskView.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).CGPath
        topImage.frame = CGRectMake(0, -2, topImage.bounds.width, topImage.bounds.height)
        topImage.layer.mask = maskView
        self.addSubview(topImage)
        
    }
    
    func addLabel(label: UILabel){
        
        label.frame = CGRectMake((bounds.width/2)-100, bounds.height*0.5, 200,200)
        label.textAlignment = NSTextAlignment.Center
        self.addSubview(label)
        
    }
    
    @nonobjc
    func addLabel(label: String){
        
        let stringLabel = UILabel()
        stringLabel.font = UIFont(name: ".SFUIDisplay-Bold", size: 36)
        stringLabel.text = label
        stringLabel.frame = CGRectMake((bounds.width/2)-100, bounds.height*0.5, 200,200)
        stringLabel.textAlignment = NSTextAlignment.Center
        self.addSubview(stringLabel)
    }
    
    func addButton(button: UIButton){
        
        button.frame = CGRectMake(0, 0, bounds.width*0.5, bounds.height*0.09)
        button.center = CGPointMake(bounds.width/2, bounds.height*0.85)
        self.addSubview(button)
        
    }
    
    override func layoutSubviews() {
        
        self.backgroundColor = UIColor.whiteColor()
        self.frame = CGRectMake(0, 0, bounds.width,bounds.height)
        self.center = CGPointMake(screenSize.width/2, screenSize.height/2)
        self.layer.cornerRadius = 25
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.darkGrayColor().CGColor
        self.layer.shadowOffset = CGSize(width: offsetWidth, height: offsetHeight)
        self.layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).CGPath
        self.layer.shadowOpacity = 0.5

        
    }
    
}
