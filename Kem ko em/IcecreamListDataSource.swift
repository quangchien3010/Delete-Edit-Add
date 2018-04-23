//
//  IcecreamListDataSource.swift
//  Kem ko em
//
//  Created by Chien on 3/14/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class IcecreamListDataSource: NSObject, UITableViewDataSource {
    
    var flavors = ["Hoa","Huong","Duong"]
    
    // MARK: - Table view data source
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flavors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let flavor = flavors[indexPath.row]
        // Configure the cell...
        cell.textLabel?.text = flavor
        return cell
    }
    

    
    // Override to support editing the table view.
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            flavors.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
          
            } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
       
    }
  
}
