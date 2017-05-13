//
//  macButtonsViewController.swift
//  ClassProject
//
//  Created by Mentor on 12.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit

class macButtonsViewController: UIViewController {

    @IBOutlet weak var topGrossingMacApplications: UIButton!
    @IBOutlet weak var topPaidMacApplications: UIButton!
    @IBOutlet weak var topMacApplications: UIButton!
    @IBOutlet weak var topFreeMacApplications: UIButton!
    
    var selectedType : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        topGrossingMacApplications.layer.cornerRadius = 5
        topPaidMacApplications.layer.cornerRadius = 5
        topMacApplications.layer.cornerRadius = 5
        topFreeMacApplications.layer.cornerRadius = 5
        
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
        
        if(segue.identifier == "topMac") {
            selectedType = "topmacapps"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
            
        else if(segue.identifier == "topFreeMac"){
            selectedType = "topfreemacapps"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
            
        else if(segue.identifier == "topPaidMac"){
            selectedType = "toppaidmacapps"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
            
        else if(segue.identifier == "topGrossingMac"){
            selectedType = "topgrossingmacapps"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }

        
    }
    

}
