//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by Eriko Ichinohe on 2017/08/30.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //DateFormatterを使って文字型から日付型に変換する
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        //選択可能な最小値を設定
        myDatePicker.minimumDate = df.date(from: "2017/01/01")
        
        //選択可能な最大値を設定
        myDatePicker.maximumDate = df.date(from: "2017/12/31")
        
        //初期値を設定
        myDatePicker.date = df.date(from: "2017/01/01")!
        
    }

    //選択された日付が変わった時
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        
        print(sender.date)
        
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        df.locale = Locale(identifier: "ja_JP")
        
        print(df.string(from: sender.date))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

