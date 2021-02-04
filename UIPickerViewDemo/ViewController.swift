//
//  ViewController.swift
//  UIPickerViewDemo
//
//  Created by Trista on 2021/2/4.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //取得螢幕的尺寸
        let fullScreenSize = UIScreen.main.bounds.size
        
        //建立一個UIPickerView，設定好它的位置、尺寸及委任對象，並加入到畫面中
        //建立 UIPickerView 設置位置及尺寸
        let myPickerView = UIPickerView(frame: CGRect(
          x: 0, y: fullScreenSize.height * 0.3,
          width: fullScreenSize.width, height: 150))

        //UIPickerView 的委任對象設置為新建的 MyViewController.swift 檔案
        //再新增 新建的MyViewController類別的實體,用來實作委任模式的方法
        let myViewController = MyViewController()

        //依新建的MyViewController類別新增的實體,加入 self就是本身所在的ViewController
        self.addChild(myViewController)

        //設定 UIPickerView 的 delegate 及 dataSource
        myPickerView.delegate = myViewController
        myPickerView.dataSource = myViewController

        //加入到畫面
        self.view.addSubview(myPickerView)
    }


}

