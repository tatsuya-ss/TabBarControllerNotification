//
//  TabBarViewController.swift
//  TabBarControllerNotification
//
//  Created by 坂本龍哉 on 2021/12/16.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    private var controllers: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    init() {
        super.init(nibName: String(describing: "TabBarViewController"), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTabBar() {
        let reviewVC = ReviewViewController()
        reviewVC.tabBarItem = UITabBarItem(title: "レビュー", image: .remove, selectedImage: .actions)
        let searchVC = SearchViewController()
        searchVC.tabBarItem = UITabBarItem(title: "検索", image: .checkmark, selectedImage: .none)
        searchVC.safeHandler = { [weak self] number in
            print("TabBarViewController", number)
        }
        controllers = [reviewVC, searchVC]
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().backgroundColor = .systemYellow
        setViewControllers(controllers, animated: true)
    }
    
}
