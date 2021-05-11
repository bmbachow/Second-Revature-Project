//
//  DashboardViewController.swift
//  Second-Revature-Project
//
//  Created by Kangseok Lee on 5/10/21.
//

import UIKit
import SideMenu


class DashboardViewController: UIViewController {

    var menu: SideMenuNavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        menu = SideMenuNavigationController(rootViewController: MenuTableViewController())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
    }
    
    @IBAction func didTap(_ sender: Any) {
        
        present(menu!, animated: true)
        
    }
    

}
