//
//  bookButtonsViewController.swift
//  ClassProject
//
//  Created by Mentor on 12.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit

class ebookButtonsViewController: UIViewController {

    @IBOutlet weak var topAudiobook: UIButton!
    @IBOutlet weak var topTextbook: UIButton!
    @IBOutlet weak var topPaidBook: UIButton!
    @IBOutlet weak var topFreeBook: UIButton!
    
    var selectedType : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        topAudiobook.layer.cornerRadius = 5
        topTextbook.layer.cornerRadius = 5
        topPaidBook.layer.cornerRadius = 5
        topFreeBook.layer.cornerRadius = 5
        
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
        
        if(segue.identifier == "topPaidBooks") {
            selectedType = "toppaidebooks"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
            
        else if(segue.identifier == "topFreeBooks"){
            selectedType = "topfreeebooks"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        
        else if(segue.identifier == "topTextbooks"){
            selectedType = "toptextbooks"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        
        else if(segue.identifier == "topAudiobooks"){
            selectedType = "topaudiobooks"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        

    }
    

}
