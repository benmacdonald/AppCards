//
//  WeatherCard.swift
//  AppCards
//
//  Created by Benjamin MacDonald on 2016-05-17.
//  Copyright © 2016 Benjamin MacDonald. All rights reserved.
//

import Foundation
import UIKit

class WeatherCard: AppCard {
    
    
    func addWeather(weatherLabel: UILabel){
        weatherLabel.frame = CGRectMake((bounds.width/2)-100, bounds.height*0.45, 200,200)
        weatherLabel.textAlignment = NSTextAlignment.Center
        self.addSubview(weatherLabel)
    }
    
    @nonobjc
    func addWeather(weatherLabel: String){
        
        let weatherLabel = UILabel()
        weatherLabel.font = UIFont(name: ".SFUIDisplay-UltraLight", size: 36)
        weatherLabel.text = "18º"
        weatherLabel.frame = CGRectMake((bounds.width/2)-100, bounds.height*0.45, 200,200)
        weatherLabel.textAlignment = NSTextAlignment.Center
        self.addSubview(weatherLabel)
        
    }
    
    func addWeatherIcon(weatherIcon: UIImageView){
        weatherIcon.frame = CGRectMake(0, 0, weatherIcon.bounds.width, weatherIcon.bounds.height)
        weatherIcon.center = CGPointMake(bounds.width/2, bounds.height*0.3)
        self.addSubview(weatherIcon)
    }
    
    @nonobjc
    func addWeatherIcon(weatherIcon: UIImage){
        
        let iconView = UIImageView(image: weatherIcon)
        iconView.frame = CGRectMake(0, 0, iconView.bounds.width, iconView.bounds.height)
        iconView.center = CGPointMake(bounds.width/2, bounds.height*0.3)
        self.addSubview(iconView)
        
    }
    
    override func addLabel(label: UILabel) {
        super.addLabel(label)
        label.frame = CGRectMake((bounds.width/2)-100, bounds.height*0.6, 200,200)
    }
    
    @nonobjc
    override func addLabel(label: String) {
        
        let stringLabel = UILabel()
        stringLabel.font = UIFont(name: ".SFUIDisplay-Bold", size: 36)
        stringLabel.text = label
        stringLabel.frame = CGRectMake((bounds.width/2)-100, bounds.height*0.6, 200,200)
        stringLabel.textAlignment = NSTextAlignment.Center
        self.addSubview(stringLabel)
    }
    
    override func addTopImage(image: UIImageView) {
        super.addTopImage(image)
    }
    
    @nonobjc
    override func addTopImage(image: UIImage) {
        super.addTopImage(image)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    
    
    
}
