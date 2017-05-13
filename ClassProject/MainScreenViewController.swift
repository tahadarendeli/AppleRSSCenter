//
//  MainScreenViewController.swift
//  ClassProject
//
//  Created by Mentor on 11.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController, AlbumContentDataDelegate {

    @IBOutlet weak var info: UIButton!
    @IBOutlet weak var tvShows: UIButton!
    @IBOutlet weak var itunesu: UIButton!
    @IBOutlet weak var podcast: UIButton!
    @IBOutlet weak var music: UIButton!
    @IBOutlet weak var movies: UIButton!
    @IBOutlet weak var macApps: UIButton!
    @IBOutlet weak var iosApps: UIButton!
    @IBOutlet weak var books: UIButton!
    
    let contentDataSource = ContentDataSource()
    
    var selectedType : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentDataSource.delegate = self

        books.layer.cornerRadius = 5
        iosApps.layer.cornerRadius = 5
        itunesu.layer.cornerRadius = 5
        macApps.layer.cornerRadius = 5
        movies.layer.cornerRadius = 5
        music.layer.cornerRadius = 5
        podcast.layer.cornerRadius = 5
        tvShows.layer.cornerRadius = 5
        
        self.title = "Welcome to Apple RSS Center"
        // Do any additional setup after loading the view.
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
        
        if(segue.identifier == "podcastIdentifier") {
            selectedType = "toppodcasts"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
        
        else if(segue.identifier == "itunesuIdentifier"){
            selectedType = "topitunesucollections"
            let controller = segue.destination as! GenreViewController
            controller.selectedType = selectedType
        }
    }

}
