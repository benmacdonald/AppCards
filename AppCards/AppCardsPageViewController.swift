//
//  AppCardsPageViewController.swift
//  AppCards
//
//  Created by Benjamin MacDonald on 2016-05-17.
//  Copyright © 2016 Benjamin MacDonald. All rights reserved.
//

import UIKit

class AppCardsPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var index = 0
    var controllers: NSArray = ["ViewController","WeatherViewController"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        self.delegate = self
        
        
        let startingViewController = self.viewControllerAtIndex(self.index)
        let viewControllers: NSArray = [startingViewController]
        self.setViewControllers(viewControllers as? [UIViewController], direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        
        self.view.backgroundColor = UIColor(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)
        
        
    }
    
    func viewControllerAtIndex(index: Int) -> UIViewController! {
        
        if index == 0 {
            
            return self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") 
            
        }
        
        if index == 1 {
            
            return self.storyboard!.instantiateViewControllerWithIdentifier("WeatherViewController")
        }
        
        return nil
    }
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let identifier = viewController.restorationIdentifier
        let index = self.controllers.indexOfObject(identifier!)
        
        if index == controllers.count - 1 {
            
            return nil
        }
        
        self.index = self.index + 1
        return self.viewControllerAtIndex(self.index)
        
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let identifier = viewController.restorationIdentifier
        let index = self.controllers.indexOfObject(identifier!)
        
        if index == 0 {
            
            return nil
        }
        
        self.index = self.index - 1
        return self.viewControllerAtIndex(self.index)
        
    }
    
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.controllers.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    

}
