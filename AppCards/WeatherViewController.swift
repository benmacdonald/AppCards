//
//  WeatherViewController.swift
//  AppCards
//
//  Created by Benjamin MacDonald on 2016-05-17.
//  Copyright © 2016 Benjamin MacDonald. All rights reserved.
//

import Foundation
import UIKit

class WeatherViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)
        
        //WeatherCard
        let weather = WeatherCard(frame: CGRectMake(20, 58, 310, 485))
        
        //Adding the Label
        weather.addLabel("Sunshine")
        
        //Adding the temperature
        weather.addWeather("18º")
        
        //Adding the weather icon
        weather.addWeatherIcon(UIImage(named: "sunny")!)
        
        self.view.addSubview(weather)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
