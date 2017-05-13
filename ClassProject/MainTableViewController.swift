//
//  MainTableViewController.swift
//  ClassProject
//
//  Created by Mentor on 13.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit
import Kingfisher

class MainTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AlbumContentDataDelegate  {

    @IBOutlet var contentView: UITableView!
    
    let contentDataSource = ContentDataSource()
    var selectedType : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Top 25"
        contentDataSource.delegate = self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        contentDataSource.loadContentList()
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contentDataSource.contentArray.count
    }
    
    func contentListLoaded() {
        
        DispatchQueue.main.async {
            self.contentView.reloadData()
        }
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumIdentifier", for: indexPath) as! ContentTableViewCell
        
        let content = contentDataSource.contentArray[indexPath.row]
        cell.imageCell.image = nil
        cell.imageCell.kf.setImage(with: ImageResource(downloadURL: URL(string: content.link)!, cacheKey: "\(content.id)"))
        if(selectedType == "toptvseasons" || selectedType == "topsongs"){
            cell.title.text = "\(content.title)"
        } else {
            cell.title.text = "\(content.name)"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let selectedCell = sender as! ContentTableViewCell
        
        let indexPath = self.contentView.indexPath(for: selectedCell)
        
        let controller = segue.destination as! DescriptionViewController
        
        controller.selectedContent = contentDataSource.contentArray[indexPath!.row]
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
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
