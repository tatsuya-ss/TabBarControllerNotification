//
//  DetailViewController.swift
//  TabBarControllerNotification
//
//  Created by 坂本龍哉 on 2021/12/16.
//

import UIKit

final class DetailViewController: UIViewController {
    
    var saveHandler: (Int) -> Void = { _ in }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }
    
    init() {
        super.init(nibName: String(describing: "DetailViewController"), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction private func didTapSaveButton(_ sender: Any) {
        saveHandler(1)
        dismiss(animated: true, completion: nil)
    }
}

// MARK: - setup
extension DetailViewController {
    
    private func setupNavigation() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemGray6
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationItem.title = "詳細画面"
    }
    
}
