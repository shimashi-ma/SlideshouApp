//
//  ViewController.swift
//  SlideshowApp
//
//  Created by mikako kinugawa on 2019/09/27.
//  Copyright © 2019 mikako.kinugawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    //スライドショーの画像
    @IBOutlet weak var slideimage: UIImageView!
    
    //画像のインデックス番号用の変数を用意
    var imageIndex = 0

    //3枚の画像を定数imagesに入れておく
    let images = [UIImage(named: "image1"),UIImage(named: "image2"),UIImage(named: "image3")]
    
    //タイマー
    var timer: Timer!
    
    //タイマーの時間のための変数
    var timer_sec: Int = 0
    
    //進むボタンのプロパティ　タップ無効用
    @IBOutlet weak var nextButton2: UIButton!
    
    //戻るボタンのプロパティ　タップ無効用
    @IBOutlet weak var backButton2: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //1枚目の画像を表示
        let imageView = images[0]
        slideimage.image = imageView
        
        
        //背景画像を設定
        let backgroundimage = UIImage(named: "noteimage")
        self.view.backgroundColor = UIColor(patternImage: backgroundimage!)

        
    }
    
    
    //画像をタップすると画面遷移
    @IBAction func tapImage(_ sender: Any) {
        //同じstororyboard内であることを定義
        let storyboard: UIStoryboard = self.storyboard!
        //移動先のstoryboardをID:secondで選択
        let second = storyboard.instantiateViewController(withIdentifier: "second")
        //移動するコード
        self.present(second, animated: true, completion: nil)
    }
    
    //進むボタン
    @IBAction func nextButton(_ sender: Any) {
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        slideimage.image = images[imageIndex]
        

        
    }
    

    
    
    //戻るボタン
    @IBAction func backButton(_ sender: Any) {
        
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        slideimage.image = images[imageIndex]
        
        
        
    }
    

    
    //再生/停止
    @IBAction func startButton(_ sender: Any) {
        
        //タイマーが存在しない場合だけ、タイマーを作成して動作させる
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        }
        
        
        //進むボタン　自動送り中はタップ無効
        if self.timer != nil {
            nextButton2.isEnabled = false
        }
        
        //戻るボタン　自動送り中はタップ無効
        if self.timer != nil {
            backButton2.isEnabled = false
        }
        

        
    }
    
    
    //タイマー
    @objc func updateTimer(_ timer: Timer) {
       
        if timer_sec % 2 == 0 {    //もしタイマーの秒数が偶数だったら（2で割った余りが0だったら）
            imageIndex += 1     //imageIndexに1を足す
            if  imageIndex == 3 {  //もしimageIndexが3になったら
                imageIndex = 0       //imageIndexを0にする
            }
            slideimage.image = images[imageIndex]   //imageIndexを代入して画像を表示させる
            }
       
    }
    




}

