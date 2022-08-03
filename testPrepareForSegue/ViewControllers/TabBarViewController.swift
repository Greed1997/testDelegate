//
//  TabBarViewController.swift
//  testPrepareForSegue
//
//  Created by Александр on 01.08.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    var someNumber = Number.getNumber()
//    var delegator: TabNumberDelegate!
    
    override func viewDidLoad() {
//        someNumber = delegator.setTabNumber() ?? someNumber
        set()
    }
    private func set() {
        guard let viewControllers = viewControllers else { return }
//        if let firstVC = viewControllers.first as? FirstViewController {
//            firstVC.someNumber = someNumber
//            firstVC.delegate = self
//        }
//        if let lastVC = viewControllers.last as? LastViewController {
//            lastVC.someNumber = someNumber
//        }
        guard let firstVC = viewControllers.first as? FirstViewController else { return }
        guard let lastVC = viewControllers.last as? LastViewController else { return }
        firstVC.someNumber = someNumber
        
        firstVC.someNumber = lastVC.someNumber
    }
}

