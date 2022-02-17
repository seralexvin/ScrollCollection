//
//  ContainerViewController.swift
//  SushiFood
//
//  Created by Servin Asanov on 14.02.2022.
//

import UIKit

class ContainerViewController: UIViewController, ViewControllerDelegate {
        
    var controller: UIViewController!
    var menuView: UIViewController!
    var isMove = false

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewController()
    }
    

    func configureViewController() {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        viewController.delegate = self
        controller = viewController
        view.addSubview(controller.view)
        addChild(controller)
    }
    
    func configureMenuViewController() {
        if menuView == nil {
            menuView = MenuViewController()
            view.insertSubview(menuView.view, at: 0)
            addChild(menuView)
            print("Add Main View Controller")
        }
    }
    
    func showMenuVC(shouldMove: Bool) {
        if shouldMove {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut) {
                self.controller.view.frame.origin.x = self.controller.view.frame.width - 200
            } completion: { (finished) in
                
            }
        } else {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut) {
                self.controller.view.frame.origin.x = 0

            } completion: { (finished) in
                
            }
        }
    }
    
    // MARK: - toggle
    func toggleMenu() {
        configureMenuViewController()
        isMove = !isMove
        showMenuVC(shouldMove: isMove)
    }

}
