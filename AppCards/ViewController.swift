//
//  ViewController.swift
//  AppCards
//
//  Created by Benjamin MacDonald on 2016-05-11.
//  Copyright © 2016 Benjamin MacDonald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)
        
        
        //Generic App Card
        let appCard = AppCard(frame: CGRectMake(20, 58, 310, 485))
    
        //Adding a Image to the view, the image always apears at the top
        appCard.addTopImage(UIImage(named: "image")!)
        
        //Adding the Label
        appCard.addLabel("AppCards")
        
        //Adding the button
        let myButton = UIButton()
        myButton.setBackgroundImage(UIImage(named: "button"), forState: .Normal)
        appCard.addButton(myButton)
        
        self.view.addSubview(appCard)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

