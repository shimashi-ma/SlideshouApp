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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slideimage.image = UIImage(named: "image1")
        
        //背景画像を設定
        let image = UIImage(named: "noteimage")
        self.view.backgroundColor = UIColor(patternImage: image!)
        
        
    }
    

    //画像をタップしたら二つ目の画面へ
    @IBAction func tapAction(_ sender: Any) {
    }
    
    //進む
    @IBAction func nextButton(_ sender: Any) {
    }
    
    //戻る
    @IBAction func backButton(_ sender: Any) {
    }
    
    //再生/停止
    @IBAction func startButton(_ sender: Any) {
    }
    
    //二つ目の画面の戻るボタンを押すとこ一つ目の画面に戻る
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    



}

