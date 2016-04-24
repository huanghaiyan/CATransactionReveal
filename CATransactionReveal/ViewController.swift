//
//  ViewController.swift
//  CATransactionReveal
//
//  Created by 黄海燕 on 16/4/24.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRectMake(10, 100, 320, 211)
        let imageView = UIImageView(frame:rect)
        
        let image = UIImage(named: "1.jpg")
        imageView.image = image
        self.view.addSubview(imageView)
        
        //使用两种方法来实现动画效果，一种是视图层面的，另一种是使用过渡动画，它实现了层的过渡动画，因此可以更低层次的控制
        let animation = CATransition()
        //设置动画的时长为2秒
        animation.duration = 2
        //设置动画的播放速度为由慢至快
        animation.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut)
        //设置动画的类型为渐显动画
        animation.type = kCATransitionReveal
        //将动画指定给图像视图的层
        imageView.layer.addAnimation(animation, forKey: "Reveal")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

