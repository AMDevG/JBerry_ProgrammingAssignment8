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
