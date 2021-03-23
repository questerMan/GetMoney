//
//  KContainClass.swift
//  GetMoney
//
//  Created by llbt.bu2gk on 2021/3/19.
//

import UIKit

/// 1、leanCloud配置信息
let APP_ID = "d3w2YaPbwpfNTWWMDoNSuPx3-gzGzoHsz"
let APP_KEY = "LkaGCGWGD8xliqvaLDXPDakr"
let MASTER_KEY = "F8AhAHbFEJFBr9uw5cs9wa2x"
let REST_API = "https://d3w2yapb.lc-cn-n1-shared.com"

let KScreen_Width = UIScreen.main.bounds.width
let KScreen_Height = UIScreen.main.bounds.height

//判断是否是刘海屏
let K_iphoneXStyle = (KScreen_Width == 375.0 && KScreen_Height == 812.0 ? true : false) || (KScreen_Width == 414.0 && KScreen_Height == 896.0 ? true : false) || (KScreen_Width == 360.0 && KScreen_Height == 780.0 ? true : false) || (KScreen_Width == 390.0 && KScreen_Height == 844.0 ? true : false) || (KScreen_Width == 428.0 && KScreen_Height == 926.0 ? true : false)

//状态栏和导航栏的高度
let KStatusBarAndNavigationBar_Height:CGFloat = (K_iphoneXStyle ? 88.0 : 64.0)

//状态栏的高度
let KStatusBar_Height = (K_iphoneXStyle ? 44.0 : 20.0)
//Tabbar的高度
let KTabbar_Height = (K_iphoneXStyle ? 83.0 : 49.0)

let KMagrinBottom = (K_iphoneXStyle ? 34.0 : 0.0)
//iphone6s为适配的宽度尺寸比例
func kScaleWidth(_ width:CGFloat) -> CGFloat { return ((width)*(KScreen_Width/375.0))}

let IsIphone6P = (KScreen_Width == 414.0 ? true : false)

let KSizeScale = (IsIphone6P ? 1.2 : 1)
//字体适配
func kFontSize(_ value:CGFloat) -> CGFloat{ return value * CGFloat(KSizeScale)}

func kSystemFont(_ value:CGFloat) -> UIFont{ UIFont.systemFont(ofSize: value * CGFloat(KSizeScale)) }

func kBoldSystemFont(_ value:CGFloat) -> UIFont{ UIFont.boldSystemFont(ofSize: value * CGFloat(KSizeScale)) }

let Is_Iphone = (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? true:false)
let Is_Ipad = (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? true:false)

struct TabBarOriginal {
    var arrVCHeadName:Array<String> = ["KTodayViewController","KGameViewController","KSearchViewController","KMeViewController"]
    var arrVCTitleName:Array<String> = ["今日","游戏","搜索","我的"]
    var showIMGArray:Array<String> = ["today","game","search","me"]
    var selectIMGArray:Array<String> = ["today_select","game_select","search_select","me_select"]
    var tabBarItemScaleSize:CGFloat = 30
    var tabBarBGColor:UIColor = UIColor().RGB(red: 255, green: 255, blue: 255) //rgba(236, 240, 241,1.0)
    var tabBarTintColor:UIColor = UIColor().RGB(red: 22, green: 160, blue: 133) //rgba(22, 160, 133,1.0)
}

class KContainClass: NSObject {
    

}
