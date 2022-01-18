//
//  TabBarViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/14.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {

//    var isLoggedIn : Bool = Constant.shared.isLoggedIn

//    let homeViewController = HomeViewController()
//    let searchViewController = SearchViewController()
//    let favouritesViewController = FavouritesViewController()
//    let orderListViewController = OrderListViewController()
//    let myEatsViewController = MyEatsViewController()

    let homeTabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "homekit"), tag: 0)
    let searchTabBarItem = UITabBarItem(title: "검색", image: UIImage(systemName: "magnifyingglass"), tag: 1)
    let favouritesTabBarItem = UITabBarItem(title: "즐겨찾기", image: UIImage(systemName: "heart"), tag: 2)
    let orderListTabBarItem = UITabBarItem(title: "주문내역", image: UIImage(systemName: "doc.text.magnifyingglass"), tag: 3)
    let myEatsTabBarItem = UITabBarItem(title: "My 이츠", image: UIImage(systemName: "person"), tag: 4)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") else {
            return
        }
            self.present(homeVC, animated: true, completion: nil)
        
        guard let searchVC = self.storyboard?.instantiateViewController(identifier: "SearchViewController") else {
                return
            }
            self.present(searchVC, animated: true, completion: nil)
        
        guard let favouritesVC = self.storyboard?.instantiateViewController(identifier: "SearchViewController") else {
                return
            }
            self.present(favouritesVC, animated: true, completion: nil)
        
        guard let orderLstVC = self.storyboard?.instantiateViewController(identifier: "SearchViewController") else {
                return
            }
            self.present(orderLstVC, animated: true, completion: nil)
        
        guard let myEatsVC = self.storyboard?.instantiateViewController(identifier: "SearchViewController") else {
                return
            }
            self.present(myEatsVC, animated: true, completion: nil)
        
//        let searchVC = UIViewController()
//        let favouritesVC = UINavigationController(rootViewController: favouritesViewController)
//        let orderLstVC = UINavigationController(rootViewController: orderListViewController)
//        let myEatsVC = UINavigationController(rootViewController: myEatsViewController)

        homeVC.tabBarItem = homeTabBarItem
        searchVC.tabBarItem = searchTabBarItem
        favouritesVC.tabBarItem = favouritesTabBarItem
        orderLstVC.tabBarItem = orderListTabBarItem
        myEatsVC.tabBarItem = myEatsTabBarItem

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [homeVC, searchVC]

        self.delegate = self
        self.tabBar.tintColor = UIColor.black
        self.tabBar.unselectedItemTintColor = UIColor.systemGray3
        self.tabBar.backgroundColor = UIColor.white
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 0 {
            print("HomeView Clicked")

        } else if item.tag == 1 {
            print("SearchView Clicked")

        } else if item.tag == 2 {
            print("FavourtiesView Clicked")

        } else if item.tag == 3 {
            print("OrderListView Clicked")

        } else if item.tag == 4 {
            print("MyEatsView Clicked")
        }
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

