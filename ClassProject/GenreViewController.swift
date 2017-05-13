//
//  AlbumGenreViewController.swift
//  ClassProject
//
//  Created by Mentor on 11.05.2017.
//  Copyright © 2017 Mentor. All rights reserved.
//

import UIKit

class GenreViewController: UIViewController, AlbumContentDataDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    

    @IBOutlet weak var genres: UIPickerView!
    @IBOutlet weak var showButton: UIButton!
    
    let contentDataSource = ContentDataSource()
    var selectedGenre : String! = ""
    var selectedType : String! = ""
    var genreList : [Genre] = []
    
    var musicGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=20/", name: "Alternative"), Genre(id: "genre=29/", name: "Anime"), Genre(id: "genre=2/", name: "Blues"), Genre(id: "genre=1122/", name: "Brazilian"), Genre(id: "genre=4/", name: "Children's Music"), Genre(id: "genre=1232/", name: "Chinese"), Genre(id: "genre=22/", name: "Christian & Gospel"), Genre(id: "genre=5/", name: "Classical"), Genre(id: "genre=3/", name: "Commedy"), Genre(id: "genre=6/", name: "Country"), Genre(id: "genre=17/", name: "Dance"), Genre(id: "genre=25/", name: "Easy Listening"), Genre(id: "genre=7/", name: "Electronic"), Genre(id: "genre=28/", name: "Enka"), Genre(id: "genre=50/", name: "Fitness & Workout"), Genre(id: "genre=50000064/", name: "genre=French Pop"), Genre(id: "genre=50000068/", name: "German Folk"), Genre(id: "genre=50000066/", name: "German Pop"), Genre(id: "genre=18/", name: "Hip-Hop/Rap"), Genre(id: "genre=8/", name: "Holiday"), Genre(id: "genre=1262/", name: "Indian"), Genre(id: "genre=53/", name: "Instrumental"), Genre(id: "genre=27/", name: "J-Pop"), Genre(id: "genre=11/", name: "Jazz"), Genre(id: "genre=51", name: "K-Pop"), Genre(id: "genre=52", name: "Karaoke"), Genre(id: "genre=30", name: "Kayakyoku"), Genre(id: "genre=1243", name: "Korean"), Genre(id: "genre=12/", name: "Latino"), Genre(id: "genre=13/", name: "New Age"), Genre(id: "genre=9/", name: "Opera"), Genre(id: "genre=14/", name: "Pop"), Genre(id: "genre=15/", name: "R&B/Soul"), Genre(id: "genre=24/", name: "Reggae"), Genre(id: "genre=21/", name: "Rock"), Genre(id: "genre=10/", name: "Singer/Songwriter"), Genre(id: "genre=16/", name: "Soundtrack"), Genre(id: "genre=50000061/", name: "Spoken Word"), Genre(id: "genre=23/", name: "Vocal"), Genre(id: "genre=19/", name: "World")]
    
    var musicVideoGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=1620/", name: "Alternative"), Genre(id: "genre=1629/", name: "Anime"), Genre(id: "genre=1685/", name: "Big Band"), Genre(id: "genre=1602/", name: "Blues"), Genre(id: "genre=1671/", name: "Brazilian"), Genre(id: "genre=1604/", name: "Children's Music"), Genre(id: "genre=1637/", name: "Chinese"), Genre(id: "genre=1622/", name: "Christian & Gospel"), Genre(id: "genre=1605/", name: "Classical"), Genre(id: "genre=1603/", name: "Commedy"), Genre(id: "genre=1606/", name: "Country"), Genre(id: "genre=1617/", name: "Dance"),  Genre(id: "genre=1631/", name: "Disney"), Genre(id: "genre=1625/", name: "Easy Listening"), Genre(id: "genre=1607/", name: "Electronic"), Genre(id: "genre=1628/", name: "Enka"), Genre(id: "genre=1683/", name: "Fitness & Workout"), Genre(id: "genre=1632/", name: "genre=French Pop"), Genre(id: "genre=1634/", name: "German Folk"), Genre(id: "genre=1633/", name: "German Pop"), Genre(id: "genre=1618/", name: "Hip-Hop/Rap"), Genre(id: "genre=1608/", name: "Holiday"), Genre(id: "genre=1690/", name: "Indian"), Genre(id: "genre=1684/", name: "Instrumental"), Genre(id: "genre=1627/", name: "J-Pop"), Genre(id: "genre=1611/", name: "Jazz"), Genre(id: "genre=1686", name: "K-Pop"), Genre(id: "genre=1687", name: "Karaoke"), Genre(id: "genre=1630", name: "Kayakyoku"), Genre(id: "genre=1648", name: "Korean"), Genre(id: "genre=1612/", name: "Latin"), Genre(id: "genre=1613/", name: "New Age"), Genre(id: "genre=1609/", name: "Opera"), Genre(id: "genre=1626/", name: "Podcasts"), Genre(id: "genre=1614/", name: "Pop"), Genre(id: "genre=1615/", name: "R&B/Soul"), Genre(id: "genre=1624/", name: "Reggae"), Genre(id: "genre=1621/", name: "Rock"), Genre(id: "genre=1610/", name: "Singer/Songwriter"), Genre(id: "genre=1616/", name: "Soundtrack"), Genre(id: "genre=1689/", name: "Spoken Word"), Genre(id: "genre=1623/", name: "Vocal"), Genre(id: "genre=1619/", name: "World")]
    
    var movieGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=4401/", name: "Action & Advanture"), Genre(id: "genre=4434/", name: "African"), Genre(id: "genre=4402/", name: "Anime"), Genre(id: "genre=4431/", name: "Bollywood"), Genre(id: "genre=4403/", name: "Classics"), Genre(id: "genre=4404/", name: "Comedy"), Genre(id: "genre=4422/", name: "Concert Films"), Genre(id: "genre=4405/", name: "Documentary"), Genre(id: "genre=4406/", name: "Drama"), Genre(id: "genre=4407/", name: "Foreign"), Genre(id: "genre=4420/", name: "Holiday"), Genre(id: "genre=4408/", name: "Horror"), Genre(id: "genre=4409/", name: "Independent"), Genre(id: "genre=4425/", name: "Japanese Cinema"), Genre(id: "genre=4426/", name: "Jidaigeki"), Genre(id: "genre=4410/", name: "Kids&Family"), Genre(id: "genre=4428/", name: "Korean Cinema"), Genre(id: "genre=4421/", name: "Made for TV"), Genre(id: "genre=4433/", name: "MiddleEastern"), Genre(id: "genre=4423/", name: "Music Documentaries"), Genre(id: "genre=4424/", name: "Music Feature Films"), Genre(id: "genre=4411/", name: "Musicals"), Genre(id: "genre=4432/", name: "Regional Indian"), Genre(id: "genre=4412/", name: "Romance"), Genre(id: "genre=4429/", name: "Russian"), Genre(id: "genre=4413/", name: "Sci-Fi & Fantasy"), Genre(id: "genre=4414/", name: "Short Films"), Genre(id: "genre=4415/", name: "Special Interest"), Genre(id: "genre=4417/", name: "Sports"), Genre(id: "genre=4416/", name: "Thriller"), Genre(id: "genre=4427/", name: "Tokusatsu"), Genre(id: "genre=4430/", name: "Turkish"), Genre(id: "genre=4419/", name: "Urban"), Genre(id: "genre=4418/", name: "Western")]

    var iosAppGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=6018/", name: "Books"), Genre(id: "genre=6000/", name: "Business"), Genre(id: "genre=6022/", name: "Catalogs"), Genre(id: "genre=6017/", name: "Education"), Genre(id: "genre=6016/", name: "Entertainment"), Genre(id: "genre=6015/", name: "Finance"), Genre(id: "genre=6023/", name: "Food & Drink"), Genre(id: "genre=6014/", name: "Games"), Genre(id: "genre=6013/", name: "Health & Fitness"), Genre(id: "genre=6012/", name: "Lifestyle"), Genre(id: "genre=6020/", name: "Medical"), Genre(id: "genre=6011/", name: "Music"), Genre(id: "genre=6010/", name: "Navigation"), Genre(id: "genre=6009/", name: "News"), Genre(id: "genre=6021/", name: "Newsstand"), Genre(id: "genre=6008/", name: "Photo & Video"), Genre(id: "genre=6007/", name: "Productivity"), Genre(id: "genre=6006/", name: "Reference"), Genre(id: "genre=6005/", name: "Social Networking"), Genre(id: "genre=6004/", name: "Sports"), Genre(id: "genre=6003/", name: "Travel"), Genre(id: "genre=6002/", name: "Utilities"), Genre(id: "genre=6001/", name: "Weather")]
    
    var macAppGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=12001/", name: "Business"), Genre(id: "genre=12002/", name: "Developer Tools"), Genre(id: "genre=12003/", name: "Education"), Genre(id: "genre=12004/", name: "Entertainment"), Genre(id: "genre=12005/", name: "Finance"), Genre(id: "genre=12006/", name: "Games"), Genre(id: "genre=12022/", name: "Graphics & Design"), Genre(id: "genre=12007/", name: "Health & Fitness"), Genre(id: "genre=12008/", name: "Lifestyle"), Genre(id: "genre=12010/", name: "Medical"), Genre(id: "genre=12011/", name: "Music"), Genre(id: "genre=12012/", name: "News"), Genre(id: "genre=12013/", name: "Photography"), Genre(id: "genre=12014/", name: "Productivity"), Genre(id: "genre=12015/", name: "Reference"), Genre(id: "genre=12016/", name: "Social Networking"), Genre(id: "genre=12017/", name: "Sports"), Genre(id: "genre=12018/", name: "Travel"), Genre(id: "genre=12019/", name: "Utilities"), Genre(id: "genre=12020/", name: "Video"), Genre(id: "genre=12021/", name: "Weather")]
    
    var bookGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=9007/", name: "Arts & Entertainment"), Genre(id: "genre=9008/", name: "Biographies & Memoirs"), Genre(id: "genre=9009/", name: "Business & Personal Finance"), Genre(id: "genre=9010/", name: "Children & Teens"), Genre(id: "genre=9026/", name: "Comics & Graphic Novels"), Genre(id: "genre=9027/", name: "Computers & Internet"), Genre(id: "genre=9028/", name: "Cookbooks, Food & Wine"), Genre(id: "genre=9031/", name: "Fiction & Literature"), Genre(id: "genre=9025/", name: "Health, Mind & Body"), Genre(id: "genre=9015/", name: "History"), Genre(id: "genre=9012/", name: "Humor"), Genre(id: "genre=9024/", name: "Lifestyle & Home"), Genre(id: "genre=9032/", name: "Mysteries & Thrillers"), Genre(id: "genre=9002/", name: "Nonfiction"), Genre(id: "genre=9030/", name: "Parenting"), Genre(id: "genre=9034/", name: "Politics & Current Events"), Genre(id: "genre=9029/", name: "Professional & Technic"), Genre(id: "genre=9033/", name: "Reference"), Genre(id: "genre=9018/", name: "Religion & Spirituality"), Genre(id: "genre=9003/", name: "Romance"), Genre(id: "genre=9020/", name: "Sci-Fi & Fantasy"), Genre(id: "genre=9019/", name: "Science & Nature"), Genre(id: "genre=9035/", name: "Sports & Outdoors"), Genre(id: "genre=9004/", name: "Travel & Adventure")]
    
    var audiobookGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=50000041/", name: "Arts & Entertainment"), Genre(id: "genre=50000070/", name: "Audiobooks Latino"), Genre(id: "genre=50000042/", name: "Biography & Memoir"), Genre(id: "genre=50000043/", name: "Business"), Genre(id: "genre=50000045/", name: "Classics"), Genre(id: "genre=50000046/", name: "Comedy"), Genre(id: "genre=50000047/", name: "Drama & Poetry"), Genre(id: "genre=50000040/", name: "Fiction"), Genre(id: "genre=50000049/", name: "History"), Genre(id: "genre=50000044/", name: "Kids & Young Adults"), Genre(id: "genre=50000050/", name: "Languages"), Genre(id: "genre=50000051/", name: "Mystery"), Genre(id: "genre=74/", name: "News"), Genre(id: "genre=50000052/", name: "Nonfiction"), Genre(id: "genre=75/", name: "Programs & Performances"), Genre(id: "genre=50000053/", name: "Religion & Spirituality"), Genre(id: "genre=9018/", name: "Religion & Spirituality"), Genre(id: "genre=50000069/", name: "Romance"), Genre(id: "genre=50000055/", name: "Sci-Fi & Fantasy"), Genre(id: "genre=50000054/", name: "Science"), Genre(id: "genre=50000056/", name: "Self Development"), Genre(id: "genre=50000048/", name: "Speakers & Storytellers"), Genre(id: "genre=50000057/", name: "Sports"), Genre(id: "genre=50000058/", name: "Technology"), Genre(id: "genre=50000059/", name: "Travel & Adventure")]
    
    var itunesuGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=40000016/", name: "Art & Architecture"), Genre(id: "genre=40000001/", name: "Business"), Genre(id: "genre=40000053/", name: "Communications & Media"), Genre(id: "genre=40000009/", name: "Engineering"), Genre(id: "genre=40000026/", name: "Health & Medicine"), Genre(id: "genre=40000041/", name: "History"), Genre(id: "genre=40000056/", name: "Language"), Genre(id: "genre=40000140/", name: "Law & Politics"), Genre(id: "genre=40000070/", name: "Literature"), Genre(id: "genre=40000077/", name: "Mathematics"), Genre(id: "genre=40000054/", name: "Philosophy"), Genre(id: "genre=40000094/", name: "Psyhchology & Social Science"), Genre(id: "genre=40000055/", name: "Religion % Spirituality"), Genre(id: "genre=40000084/", name: "Science"), Genre(id: "genre=40000101/", name: "Society"), Genre(id: "genre=40000109/", name: "Teaching & Learning")]
    
    var podcastGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=1301/", name: "Arts"), Genre(id: "genre=1321/", name: "Business"), Genre(id: "genre=1303/", name: "Comedy"), Genre(id: "genre=1304/", name: "Education"), Genre(id: "genre=1323/", name: "Games & Hobbies"), Genre(id: "genre=1325/", name: "Government & Organizations"), Genre(id: "genre=1307/", name: "Health"), Genre(id: "genre=1305/", name: "Kids & Family"), Genre(id: "genre=1310/", name: "Music"), Genre(id: "genre=1311/", name: "News & Politics"), Genre(id: "genre=1314/", name: "Religion & Spirituality"), Genre(id: "genre=1315/", name: "Science & Medicine"), Genre(id: "genre=1324/", name: "Society & Culture"), Genre(id: "genre=1316/", name: "Sports & Recreation"), Genre(id: "genre=1318/", name: "Technology"), Genre(id: "genre=1309/", name: "TV & Film")]
    
    var tvShowGenreList = [Genre(id: "", name: "All"), Genre(id: "genre=4003/", name: "Action & Adventure"), Genre(id: "genre=14002/", name: "Animation"), Genre(id: "genre=4004/", name: "Classic"), Genre(id: "genre=4000/", name: "Comedy"), Genre(id: "genre=4001/", name: "Drama"), Genre(id: "genre=4005/", name: "Kids"), Genre(id: "genre=4011/", name: "Latino TV"), Genre(id: "genre=4006/", name: "Nonfiction"), Genre(id: "genre=4007/", name: "Reality TV"), Genre(id: "genre=4008/", name: "Sci-Fi & Fantasy"), Genre(id: "genre=4009/", name: "Sports"), Genre(id: "genre=4010/", name: "Teen"), Genre(id: "genre=1324/", name: "Society & Culture"), Genre(id: "genre=1316/", name: "Sports & Recreation"), Genre(id: "genre=1318/", name: "Technology"), Genre(id: "genre=1309/", name: "TV & Film")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentDataSource.delegate = self
        self.genres.dataSource = self
        self.genres.delegate = self
        
        showButton.layer.cornerRadius = 5
        
        self.title = "Choose a Genre"
        
        if(selectedType == "topmovies" || selectedType == "topvideorentals"){
             genreList = movieGenreList
        }
        else if(selectedType == "topsongs" || selectedType == "topalbums"){
            genreList = musicGenreList
        }
        else if(selectedType == "topfreeebooks" || selectedType == "toppaidebooks" || selectedType == "toptextbooks"){
            genreList = bookGenreList
        }
        else if(selectedType == "topfreemacapps" || selectedType == "toppaidmacapps" || selectedType == "topmacapps" || selectedType == "topgrossingmacapps"){
            genreList = macAppGenreList
        }
        else if(selectedType == "newapplications" || selectedType == "newfreeapplications" || selectedType == "newpaidapplications" || selectedType == "topfreeapplications" || selectedType == "toppaidapplications" || selectedType == "topfreeipadapplications" || selectedType == "toppaidipadapplications" || selectedType == "topgrossingapplications" || selectedType == "topgrossingipadapplications"){
            genreList = iosAppGenreList
        }
        else if(selectedType == "topitunesucollections"){
            genreList = itunesuGenreList
        }
        else if(selectedType == "toppodcasts"){
            genreList = podcastGenreList
        }
        else if(selectedType == "topmusicvideos"){
            genreList = musicVideoGenreList
        }
        else if(selectedType == "toptvseasons" || selectedType == "toptvepisodes"){
            genreList = tvShowGenreList
        }
        else if(selectedType == "topaudiobooks"){
            genreList = audiobookGenreList
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genreList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genreList[row].name.description
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedGenre = genreList[row].id
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let controller = segue.destination as! MainTableViewController
        
        controller.contentDataSource.selectedGenre = selectedGenre
        controller.contentDataSource.selectedType = selectedType
        controller.selectedType = selectedType
        
    }

}
