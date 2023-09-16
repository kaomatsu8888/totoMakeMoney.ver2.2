//
//  ColorViewController.swift
//  totoMakeMoney.ver2.2
//
//  Created by kaoru matsunaga on 2023/09/15.
//

import UIKit

struct User {
    let icon: UIImage?
    let name: String
}

class ColorViewController: UITabBarController {
    @IBOutlet private weak var tableView: UITableView!
    private let users: [User] = [
           User(icon: #imageLiteral(resourceName: "icon") , name: "Angel"),
           User(icon: #imageLiteral(resourceName: "icon") , name: "Bob"),
           User(icon: #imageLiteral(resourceName: "icon") , name: "Chirs"),
       ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


