//
//  StadiumTableViewController.swift
//  totoMakeMoney.ver2.2
//
//  Created by kaoru matsunaga on 2023/09/16.
//

import UIKit

class StadiumTableViewController: UITableViewController {
    
    var locations = ["駅前不動産スタジアム", "レゾナックドーム大分", "ミクニワールドスタジアム北九州"]
    let explannations = ["サガン鳥栖のホームスタジアム。徒歩5分とアクセス良好", "大分トリニータのホームスタジアム。パークプレイス大分があり、買い物も楽しめる","ギラヴァンツ北九州のホームスタジアム。サッカースタジアムとしては珍しく海の横に隣接している。ボールが偶に海に落ちる"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    //セクション数のコード
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return locations.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StadiumTableViewCell", for: indexPath) as! StadiumTableViewCell
        
        
        cell.nameLabel.text = locations[indexPath.row]
        cell.iconImageView?.image = UIImage(named: "image\(indexPath.row + 1)")
        
        
        // Configure the cell...
        
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        VC.selectLocation = locations[indexPath.row]
        VC.selectImage = UIImage(named: "image\(indexPath.row + 1)")
        VC.selectexplannation = explannations[indexPath.row]
        VC.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(VC, animated: true)
//        present(VC, animated: true)
    }
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    //Cellがタップされたときに呼ばれるメソッド indexPathでどこが押されたかを取得できる
    //override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  //  <#code#>
    // }
    
    //}
    
}
