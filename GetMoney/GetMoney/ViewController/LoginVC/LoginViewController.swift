//
//  LoginViewController.swift
//  GetMoney
//
//  Created by 陆遗坤 on 2021/3/23.
//

import UIKit
import SnapKit

let LoginTags = ["登录","注册"]

class LoginViewController: UIViewController {
    
    
    
    private var selectedSegmentIndex:Int = 0 // 默认第一个被选中
    {
        didSet {
            print("分段控件被开始赋值")
            
        }
    }
    
    lazy var bgIMG:UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "login_top_bg")
        return img
    }()
    
    lazy var segmentedControl:UISegmentedControl = {
       let segmented = UISegmentedControl(items: LoginTags)
        segmented.selectedSegmentIndex = selectedSegmentIndex
        segmented.addTarget(self, action: #selector(segmentedAction(segm:)), for: .valueChanged)
        return segmented
    }()

    lazy var usernameTextFile:UITextField = {
        let textFiled = UITextField()
        textFiled.placeholder = "请输入账号信息 username"
        return textFiled
    }()
    lazy var usernameLine:UILabel = {
        let lab = UILabel()
        lab.backgroundColor = UIColor().RGB(red: 0, green: 0, blue: 0, alpha: 0.2)
        return lab
    }()
    
    lazy var passwordTextFile:UITextField = {
        let textFiled = UITextField()
        textFiled.placeholder = "请输入秘密信息 password"
        return textFiled
    }()
    lazy var passwordLine:UILabel = {
        let lab = UILabel()
        lab.backgroundColor = UIColor().RGB(red: 0, green: 0, blue: 0, alpha: 0.2)
        return lab
    }()
    
    lazy var loginBtn:UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitle("登录", for: .normal)
        btn.backgroundColor = UIColor().RGB(red: 25, green: 182, blue: 200, alpha: 0.6)
        btn.addTarget(self, action: #selector(loginAction(btn:)), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.creatUI()
        
    }

    @objc private func segmentedAction(segm:UISegmentedControl) {
        selectedSegmentIndex = segm.selectedSegmentIndex
        
    }
    
    @objc private func loginAction(btn:UIButton) {

        print("登录")
    }
    
    private func creatUI() {
        //
        self.view.addSubview(bgIMG)
        self.bgIMG.snp.makeConstraints { (make) in
            make.left.top.right.equalTo(kScaleWidth(0))
            make.height.equalTo(kScaleWidth(300))
        }
        
        self.view.addSubview(self.segmentedControl)
        self.segmentedControl.snp.makeConstraints { (make) in
            make.top.equalTo(self.bgIMG.snp_bottomMargin).offset(kScaleWidth(10))
            make.left.right.equalTo(kScaleWidth(0))
            make.height.equalTo(kScaleWidth(40))
        }
        
        self.view.addSubview(self.usernameTextFile)
        self.usernameTextFile.snp.makeConstraints { (make) in
            make.top.equalTo(self.segmentedControl.snp_bottomMargin).offset(kScaleWidth(40))
            make.left.equalTo(kScaleWidth(40))
            make.right.equalTo(kScaleWidth(-40))
            make.height.equalTo(kScaleWidth(50))
        }
        self.view.addSubview(self.usernameLine)
        self.usernameLine.snp.makeConstraints { (make) in
            make.top.equalTo(self.usernameTextFile.snp_bottomMargin).offset(kScaleWidth(0))
            make.left.equalTo(kScaleWidth(40))
            make.right.equalTo(kScaleWidth(-40))
            make.height.equalTo(kScaleWidth(1))
        }
        
        self.view.addSubview(self.passwordTextFile)
        self.passwordTextFile.snp.makeConstraints { (make) in
            make.top.equalTo(self.usernameTextFile.snp_bottomMargin).offset(kScaleWidth(30))
            make.left.equalTo(kScaleWidth(40))
            make.right.equalTo(kScaleWidth(-40))
            make.height.equalTo(kScaleWidth(50))
        }
        self.view.addSubview(self.passwordLine)
        self.passwordLine.snp.makeConstraints { (make) in
            make.top.equalTo(self.passwordTextFile.snp_bottomMargin).offset(kScaleWidth(0))
            make.left.equalTo(kScaleWidth(40))
            make.right.equalTo(kScaleWidth(-40))
            make.height.equalTo(kScaleWidth(1))
        }

        self.view.addSubview(self.loginBtn)
        self.loginBtn.snp.makeConstraints { (make) in
            make.top.equalTo(self.passwordLine.snp_bottomMargin).offset(kScaleWidth(100))
            make.left.equalTo(kScaleWidth(40))
            make.right.equalTo(kScaleWidth(-40))
            make.height.equalTo(kScaleWidth(40))
        }
        
    }



}
