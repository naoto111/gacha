//
//  ViewController.swift
//  gacha
//
//  Created by Naoto on 2015/04/24.
//  Copyright (c) 2015年 Naoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number :Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //乱数の発生
    @IBAction func getRandomNumber(){
        number = Int(arc4random_uniform(10))
        NSLog("発生した乱数は...%dです",number)
    }
    //画面遷移する前に呼ばれる処理。ここで値を渡す
    override func prepareForSegue(segue: UIStoryboardSegue, sender:AnyObject?){
        var resultViewController = segue.destinationViewController as ResultViewController
        
        resultViewController.number = self.number
        
    }

}

