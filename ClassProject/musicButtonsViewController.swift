//
//  bookButtonsViewController.swift
//  ClassProject
//
//  Created by Mentor on 12.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit

class bookButtonsViewController: UIViewController {

    @IBOutlet weak var topMusicVideos: UIButton!
    @IBOutlet weak var topAlbums: UIButton!
    @IBOutlet weak var topSongs: UIButton!
    
    var selectedType : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        topMusicVideos.layer.cornerRadius = 5
        topAlbums.layer.cornerRadius = 5
        topSongs.layer.cornerRadius = 5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "topAlbums") {
            selectedType = "topalbums"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        else if(segue.identifier == "topSongs") {
            selectedType = "topsongs"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        else if(segue.identifier == "topmusicvideos") {
            selectedType = "topmusicvideos"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }

        
    }
    

}
