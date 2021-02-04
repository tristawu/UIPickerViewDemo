//
//  MyViewController.swift
//  UIPickerViewDemo
//
//  Created by Trista on 2021/2/4.
//

import UIKit

//選擇iOS > Source > Cocoa Touch Class這個模版的檔案
//新增一個繼承自UIViewController的子類別
//遵守委任模式需要的協定 UIPickerViewDelegate 與 UIPickerViewDataSource，用來實作 UIPickerView 委任模式的方法
class MyViewController: UIViewController,
                        UIPickerViewDelegate, UIPickerViewDataSource {
    
    //增加四個屬性
    let week = [
          "星期日","星期一","星期二","星期三",
          "星期四","星期五","星期六"]
    let meals = ["早餐","午餐","晚餐","宵夜"]
    var whatDay = "星期日"
    var whatMeal = "早餐"
    
    
    //協定UIPickerViewDataSource 必須實作的方法
    //UIPickerView 有幾列可以選擇
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    //協定UIPickerViewDataSource 必須實作的方法
    //UIPickerView 各列有多少行資料
    //參數component代表哪一列,從0開始算起
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //設置第一列時
        if component == 0 {
                //返回陣列 week 的成員數量
                return week.count
            }

        //否則就是設置第二列
        //返回陣列 meals 的成員數量
        return meals.count
    }
    
    // UIPickerView 每個選項顯示的資料
    //參數component及row，分別代表哪一列以及這列的哪一行資料,都是從0開始算起
    func pickerView(_ pickerView: UIPickerView,
      titleForRow row: Int, forComponent component: Int)
      -> String? {
        //設置第一列時
        if component == 0 {
            //設置為陣列 week 的第 row 項資料
            return week[row]
        }

        //否則就是設置第二列
        //設置為陣列 meals 的第 row 項資料
        return meals[row]
    }

    //UIPickerView 改變選擇後執行的動作
    //參數component及row，分別代表哪一列以及這列的哪一行資料,都是從0開始算起
    func pickerView(_ pickerView: UIPickerView,
      didSelectRow row: Int, inComponent component: Int) {

        //改變第一列時
        if component == 0 {
            //whatDay 設置為陣列 week 的第 row 項資料
            whatDay = week[row]
        }
        else {
            //否則就是改變第二列
            //whatMeal 設置為陣列 meals 的第 row 項資料
            whatMeal = meals[row]
        }
        
        //將改變的結果印出來
        print("選擇的是 \(whatDay) ， \(whatMeal)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
