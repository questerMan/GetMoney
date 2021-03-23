//
//  TabBarViewController.swift
//  HTCDemo
//
//  Created by 陆遗坤 on 2021/3/23.
//  Copyright © 2020 陆遗坤. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.creatBGUI()
        
    }
    
    // MARK - 设置TabBar视图
    func creatBGUI() {
        
        self.tabBar.isTranslucent = false

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK - 创建tabBar控制器
    public func creatVC(arrVCHeadName:Array<String>,
                        arrVCTitleName:Array<String>,
                        showIMGArray:Array<String>,
                        selectIMGArray:Array<String>){
        var count:Int = 0
        var arr:Array<UIViewController> = []
        for itemStr in arrVCTitleName {

            let vc = controllerFormString(className: arrVCHeadName[count])
            let nac:UINavigationController = UINavigationController(rootViewController:vc)

            let image:UIImage =  UIImage(named: showIMGArray[count])!.setSizeImage(CGSize(width: TabBarOriginal().tabBarItemScaleSize, height: TabBarOriginal().tabBarItemScaleSize))
            let selectedImage:UIImage =  UIImage(named: selectIMGArray[count])!.setSizeImage(CGSize(width: TabBarOriginal().tabBarItemScaleSize, height: TabBarOriginal().tabBarItemScaleSize))
            
            nac.tabBarItem = UITabBarItem(title: itemStr, image: image, selectedImage:selectedImage)

            nac.navigationBar.isTranslucent = false

            arr.append(nac)
            
            count += 1
        }
        self.viewControllers = arr
    }
    
}

