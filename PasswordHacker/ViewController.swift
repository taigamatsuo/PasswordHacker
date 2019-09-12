//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 松尾大雅 on 2019/09/12.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //結果表示ラベル
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    
    //カウント用ラベル
    @IBOutlet var countLabel : UILabel!
    var password : Int = 1234
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start(){
        //パスワードが0000だったら
        //if password == 0000{
          //  NSlog("正解は0000です！")
       // }else if password == 0001{
         //   NSLog ("正解は0001です！")
        
        //0から9999までループする
        for i in 0...9999{
            countLabel.text = String(i)
            
           //処理を０.０００５秒待機する
            RunLoop.main.run(until: Date(timeIntervalSinceNow:0.0005))
            
            //passwordとiが一致したら。
            if password == i{
                print ("正解は\(i)です！")
            }
            
            if password == i {
                var digits = [Int]()
                
                for _ in 0...3{
                    digits.append(password % 10)
                    password = password / 10
                }
                    
                    resultLabel1.text = String(digits[0])
                    resultLabel2.text = String(digits[1])
                    resultLabel3.text = String(digits[2])
                    resultLabel4.text = String(digits[3])
                    
                }
                
            }
        
        
        
    }
    @IBAction func reset(){
        
        password = 1234
        countLabel.text = "「START」ボタンを押して解析開始"
        
        //ラベルの表示を全て0000にもどす
         resultLabel1.text = "0"
         resultLabel2.text = "0"
         resultLabel3.text = "0"
         resultLabel4.text = "0"
        
        
    }
    
    
    }



