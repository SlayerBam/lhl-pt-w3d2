//
//  TableViewController.swift
//  w3d2-customtableviews
//
//  Created by David Mills on 2017-01-26.
//  Copyright © 2017 David Mills. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var data = ["Malcolm", "Kaylee", "Wash", "Zoe", "Book"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addName(_ sender: Any) {
        let alertView = UIAlertController.init(title: "Add Name", message: "Please enter a name", preferredStyle: .alert)
        alertView.addTextField()
        let saveAction = UIAlertAction.init(title: "Save", style: .default, handler: { (action) in
            // Save the name to our array
            let name = alertView.textFields![0].text!
            self.data.append(name)
            self.tableView.reloadData()
        })
        let cancelAction = UIAlertAction.init(title: "Cancel", style: .cancel)
        alertView.addAction(saveAction)
        alertView.addAction(cancelAction)
        
        self.present(alertView, animated: true, completion: nil)
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell

        // Configure the cell...
        let name = self.data[indexPath.row]
        cell.cellLabel.text = name
        
        // Check if row is even (using modulus operator)
        if (indexPath.row % 2 == 0) {
            cell.cellLabel.textColor = UIColor.blue
        } else {
            cell.cellLabel.textColor = UIColor.red
        }

        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
