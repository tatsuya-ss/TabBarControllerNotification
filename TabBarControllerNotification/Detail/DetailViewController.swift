//
//  DetailViewController.swift
//  TabBarControllerNotification
//
//  Created by 坂本龍哉 on 2021/12/16.
//

import UIKit

final class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    init() {
        super.init(nibName: String(describing: "DetailViewController"), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
