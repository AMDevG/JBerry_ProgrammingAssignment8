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
    
 
    
    let categories = ["Hancock Tower", "Willis Tower", "Humboldt Park", "Lincoln Park"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
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
            DestViewController.selectedTitle = selectedCategory
            // Label of detail title
        }
    }

}

