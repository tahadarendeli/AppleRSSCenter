//
//  tvShowsViewController.swift
//  ClassProject
//
//  Created by Mentor on 13.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit

class tvShowsViewController: UIViewController {

    @IBOutlet weak var topEpisodes: UIButton!
    @IBOutlet weak var topSeasons: UIButton!
    
    var selectedType : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        topEpisodes.layer.cornerRadius = 5
        topSeasons.layer.cornerRadius = 5
        
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
        
        if(segue.identifier == "topEpisodes") {
            selectedType = "toptvepisodes"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
            
        else if(segue.identifier == "topSeasons"){
            selectedType = "toptvseasons"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }

        
    }
    

}
