//
//  IcecreamListViewController.swift
//  Kem ko em
//
//  Created by Chien on 3/14/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class IcecreamListViewController: UITableViewController {
    
    
       
    //  var strData = [Int](1...10)
    
    let dataSource = IcecreamListDataSource()
    let delegate = IcecreamListDelegate()
    override func viewDidLoad() {
        navigationItem.leftBarButtonItem = editButtonItem
        super.viewDidLoad()
        tableView.dataSource = dataSource
        tableView.delegate = delegate
    }
    
// Ban nguoc du lieu tu Viewcontroller ve TBViewController
    @IBAction func unwind(sender : UIStoryboardSegue) {
        let VC = sender.source as? ViewController
        let data = VC?.dataVC
        
        //Dung index de [han biet Edit or Add
        if let index = tableView.indexPathForSelectedRow?.row {
            dataSource.flavors[index] = data!
        } else {
            dataSource.flavors.append(data!)
        }
        tableView.reloadData()
    }
    
    // Ban du lieu tu Cell_TBViewController sang ViewController
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EditDL" {
            let numberVC = segue.destination as? ViewController
            numberVC?.dataVC = dataSource.flavors[tableView.indexPathForSelectedRow!.row]
        }
    }
}
