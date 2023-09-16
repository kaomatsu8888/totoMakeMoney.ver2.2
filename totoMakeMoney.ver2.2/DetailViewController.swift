//
//  DetailViewController.swift
//  totoMakeMoney.ver2.2
//
//  Created by kaoru matsunaga on 2023/09/16.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectLocation: String?
    var selectImage: UIImage?
    var selectexplannation: String?

    @IBOutlet weak var studiumName: UILabel!
    @IBOutlet weak var studiumview: UIImageView!
    @IBOutlet weak var sturiumexp: UILabel!
    //    @IBOutlet weak var explanation: UILabel!
  
    //    @IBOutlet weak var StadiumName: UIImageView!
 
//    @IBOutlet weak var Stadiumintro: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        studiumName.text = selectLocation
        studiumview.image = selectImage
        sturiumexp.text = selectexplannation
        

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

}

