//
//  ViewController.swift
//  JBerry_ProgrammingAssignment8
//
//  Created by John Berry on 3/8/17.
//  Copyright © 2017 dev G Development. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var selectedCategory: String!
    
 
    
    let categories = ["Hancock Tower", "Willis Tower", "Humboldt Park", "Lincoln Park", "Navy Pier", "Millenium Park", "Shedd Aquarium", "Field Museum", "Institute of Art", "Magnificent Mile",
        "Museum of Science & Industry", "Adler Planetarium", "Wrigley Field"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "choiceCell", for: indexPath)
        cell.textLabel?.text =  "\(categories[indexPath.row])"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let indexPath = tableView.indexPathForSelectedRow
        let currentCell = tableView.cellForRow(at: indexPath!)! as UITableViewCell
        selectedCategory = currentCell.textLabel!.text!
        self.performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail"{
            let DestViewController: DetailViewController = segue.destination as! DetailViewController
            let DicData: LandmarkDetails = LandmarkDetails()
            DestViewController.selectedTitle = selectedCategory
            
            if selectedCategory == "Hancock Tower"{
        
                DestViewController.detailInfo = DicData.HancockTower["summary"]!
            }
            else if selectedCategory == "Willis Tower"{
                DestViewController.detailInfo = DicData.WillisTowerInfo["summary"]!
            }
            else if selectedCategory == "Humboldt Park"{
                DestViewController.detailInfo = DicData.HumboldtInfo["summary"]!
            }
            else if selectedCategory == "Lincoln Park"{
                DestViewController.detailInfo = DicData.LPInfo["summary"]!
            }
            else if selectedCategory == "Navy Pier"{
                DestViewController.detailInfo = DicData.NavyPier["summary"]!
            }
            else if selectedCategory == "Millenium Park"{
                DestViewController.detailInfo = DicData.Millenium["summary"]!
            }
            else if selectedCategory == "Shedd Aquarium"{
                DestViewController.detailInfo = DicData.Shedd["summary"]!
            }
            else if selectedCategory == "Field Museum"{
                DestViewController.detailInfo = DicData.FieldMuseum["summary"]!
            }
            else if selectedCategory == "Institute of Art"{
                DestViewController.detailInfo = DicData.ArtInstitute["summary"]!
            }
            else if selectedCategory == "Magnificent Mile"{
                DestViewController.detailInfo = DicData.MagMile["summary"]!
            }
            else if selectedCategory == "Museum of Science & Industry"{
                DestViewController.detailInfo = DicData.SciIndMuseum["summary"]!
            }
            else if selectedCategory == "Adler Planetarium"{
                DestViewController.detailInfo = DicData.Adler["summary"]!
            }
            else if selectedCategory == "Wrigley Field"{
                DestViewController.detailInfo = DicData.Wrigley["summary"]!
            }
    }

}
}

