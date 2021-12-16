//
//  SearchViewController.swift
//  TabBarControllerNotification
//
//  Created by 坂本龍哉 on 2021/12/16.
//

import UIKit

final class SearchViewController: UIViewController {
    
    var safeHandler: (Int) -> Void = { _ in }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    init() {
        super.init(nibName: String(describing: "SearchViewController"), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBAction private func didTapShowDetailVCButton(_ sender: Any) {
        let detailVC = DetailViewController()
        detailVC.saveHandler = { [weak self] number in
            self?.safeHandler(number)
        }
        let navigation = UINavigationController(rootViewController: detailVC)
        present(navigation, animated: true, completion: nil)
    }
    
}
