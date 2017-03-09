//
//  DetailViewController.swift
//  JBerry_ProgrammingAssignment8
//
//  Created by John Berry on 3/8/17.
//  Copyright © 2017 dev G Development. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var landmarkTitle: UILabel!
    @IBOutlet weak var detailText: UITextView!
    @IBOutlet weak var landmarkImage: UIImageView!
    
    var selectedTitle = String()
    var detailInfo = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        landmarkTitle.text = selectedTitle
        detailText.text = detailInfo
        
        if selectedTitle == "Hancock Tower"{
            landmarkImage.image = UIImage(named: "hancock")
        }
       else if selectedTitle == "Willis Tower"{
            landmarkImage.image = UIImage(named: "willis")
        }
        else if selectedTitle == "Humboldt Park"{
            landmarkImage.image = UIImage(named: "humboldt")
        }
        else if selectedTitle == "Lincoln Park"{
            landmarkImage.image = UIImage(named: "lincolnPark")
        }
        else if selectedTitle == "Navy Pier"{
            landmarkImage.image = UIImage(named: "navyPier")
        }
        else if selectedTitle == "Millenium Park"{
            landmarkImage.image = UIImage(named: "millenium")
        }
        else if selectedTitle == "Shedd Aquarium"{
            landmarkImage.image = UIImage(named: "shedd")
        }
        else if selectedTitle == "Field Museum"{
            landmarkImage.image = UIImage(named: "field")
        }
        else if selectedTitle == "Institute of Art"{
            landmarkImage.image = UIImage(named: "art")
        }
        else if selectedTitle == "Magnificent Mile"{
            landmarkImage.image = UIImage(named: "magmile")
        }
        else if selectedTitle == "Museum of Science & Industry"{
            landmarkImage.image = UIImage(named: "science")
        }
        else if selectedTitle == "Adler Planetarium"{
            landmarkImage.image = UIImage(named: "adler")
        }
        else if selectedTitle == "Wrigley Field"{
            landmarkImage.image = UIImage(named: "wrigley")
        }

        // Do any additional setup after loading the view.
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
