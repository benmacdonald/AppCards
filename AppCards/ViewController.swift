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
        
        let appCard = AppCard(frame: CGRectMake(20, 58, 334, 522))
        appCard.backgroundColor = UIColor.whiteColor()
    
        //Adding a Image to the view, the image always apears at the top
        let myImage = UIImageView(image: UIImage(named: "image"))
        appCard.addTopImage(myImage)
        
        //Adding the Label
        let myLabel = UILabel()
        myLabel.font = UIFont(name: ".SFUIDisplay-Bold", size: 36)
        myLabel.text = "App Cards"
        appCard.addLabel(myLabel)
        
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

