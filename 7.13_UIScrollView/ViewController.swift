//
//  ViewController.swift
//  7.13_UIScrollView
//
//  Created by 王卓 on 15/4/17.
//  Copyright (c) 2015年 王卓. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var scrollView=UIScrollView()
        scrollView.frame=self.view.bounds
        var imgview=UIImageView(image: UIImage(named: "a01"))
        scrollView.contentSize=imgview.bounds.size
        scrollView.addSubview(imgview)
        self.view.addSubview(scrollView)
        
        scrollView.minimumZoomScale=0.1
        scrollView.maximumZoomScale=3
        scrollView.delegate=self
        
  
    }
    
    func viewForZoomingInScrollView(scrollView:UIScrollView!)->UIView!{
        for subview :AnyObject in scrollView.subviews{
            if subview.isKindOfClass(UIImageView){
                return subview as UIView
            }
        }
        return nil
    }
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

