//
//  iosAppButtonsViewController.swift
//  ClassProject
//
//  Created by Mentor on 12.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit

class iosAppButtonsViewController: UIViewController {

    @IBOutlet weak var topPaidIpadApplication: UIButton!
    @IBOutlet weak var topPaidApplication: UIButton!
    @IBOutlet weak var topGrossingIpadApplication: UIButton!
    @IBOutlet weak var topGrossingApplicaiton: UIButton!
    @IBOutlet weak var topFreeIpadApplication: UIButton!
    @IBOutlet weak var topFreeApplication: UIButton!
    @IBOutlet weak var newPaidApplication: UIButton!
    @IBOutlet weak var newFreeApplication: UIButton!
    @IBOutlet weak var newApplication: UIButton!
    
    
    var selectedType : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        topPaidIpadApplication.layer.cornerRadius = 5
        topPaidApplication.layer.cornerRadius = 5
        topGrossingIpadApplication.layer.cornerRadius = 5
        topGrossingApplicaiton.layer.cornerRadius = 5
        topFreeIpadApplication.layer.cornerRadius = 5
        topFreeApplication.layer.cornerRadius = 5
        newPaidApplication.layer.cornerRadius = 5
        newFreeApplication.layer.cornerRadius = 5
        newApplication.layer.cornerRadius = 5
        
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
        
        if(segue.identifier == "new") {
            selectedType = "newapplications"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
            
        else if(segue.identifier == "newFree"){
            selectedType = "newfreeapplications"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        else if(segue.identifier == "newPaid") {
            selectedType = "newpaidapplications"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        else if(segue.identifier == "topFree"){
            selectedType = "topfreeapplications"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        else if(segue.identifier == "topPaid") {
            selectedType = "toppaidapplications"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        else if(segue.identifier == "topFreeiPad"){
            selectedType = "topfreeipadapplications"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        else if(segue.identifier == "topPaidiPad") {
            selectedType = "toppaidipadapplications"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        else if(segue.identifier == "topGrossing"){
            selectedType = "topgrossingapplications"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        else if(segue.identifier == "topGrossingiPad") {
            selectedType = "topgrossingipadapplications"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        
    }
    
}
