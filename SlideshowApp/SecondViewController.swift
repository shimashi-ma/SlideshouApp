//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by mikako kinugawa on 2019/09/27.
//  Copyright © 2019 mikako.kinugawa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    //拡大表示の画像
    @IBOutlet weak var enlargedImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //拡大画像を表示
        
        
        //背景画像を設定
        let backgroundimage = UIImage(named: "noteimage")
        self.view.backgroundColor = UIColor(patternImage: backgroundimage!)

        
    }
    
    
    //戻るボタン
    @IBAction func backbutton(_ sender: Any) {
        //ひとつ前の画面に戻る
        self.dismiss(animated: true, completion: nil)
        
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
