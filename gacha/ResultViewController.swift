//
//  ResultViewController.swift
//  gacha
//
//  Created by Naoto on 2015/04/24.
//  Copyright (c) 2015年 Naoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var number:Int!
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NSLog("渡された値は...です%d",number)
        if number == 9{
            //超激レア！！！！！！いえええええええい
            monsterImageView.image = UIImage(named:"monster010")
            backgroundImageView.image = UIImage(named:"bg_gold")
        }else if number > 7{
            //レアでち
            monsterImageView.image = UIImage(named:"monster006")
            backgroundImageView.image = UIImage(named:"bg_red")
        }else{
            //ノーマルだと。。。
            monsterImageView.image  = UIImage(named:"monster003")
            backgroundImageView.image = UIImage(named:"bg_blue")
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
