//
//  ViewController.swift
//  MyApp16
//
//  Created by user on 2017/6/30.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let fmgr = FileManager.default
    let home = NSHomeDirectory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //抓目錄法一
        
        print(home)
        let appdata = home + "/Documents/mydata"
        
        if !fmgr.fileExists(atPath: appdata){
            do{
                try fmgr.createDirectory(atPath: appdata, withIntermediateDirectories: true, attributes: nil)
                print("create Dir")
            }catch{
                
            }
        }else{
            print("Dir ok")
        }
        
        
        
        
//        let docPath = home + "/Documents"
//        let newdir = docPath + "/dir1"
//        let copydir = docPath + "/dir2"
//        do{
////            try fmgr.createDirectory(atPath: newdir, withIntermediateDirectories: true, attributes: nil)
////            try fmgr.copyItem(atPath: newdir, toPath: copydir)
//            try fmgr.removeItem(atPath: copydir)
//            print("OK")
//        }catch{
//            print(error)
//        }
        
        
        //抓目錄法二
//        let urls = fmgr.urls(for: .documentDirectory, in: .userDomainMask)
//        for i in 0..<urls.count{
//            print(urls[i].absoluteString)
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

