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
    
    //進む
    @IBAction func nextButton(_ sender: Any) {
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        slideimage.image = images[imageIndex]
    }
    
    //戻る
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
    }
    




}

