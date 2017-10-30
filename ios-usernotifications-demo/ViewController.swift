//
//  ViewController.swift
//  ios-usernotifications-demo
//
//  Created by Yuu Ogasa on 2017/10/30.
//  Copyright © 2017年 SundayCarpenter. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setNotification()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController{
    func setNotification(){
        //ユーザーに通知の許可を要求
        UNUserNotificationCenter.current()
            .requestAuthorization(options: [.alert, .sound, .badge])
            {
            (granted, error) in
                if granted {
                    //Token を登録
                    UIApplication.shared.registerForRemoteNotifications()
                }
        }
    }
}
