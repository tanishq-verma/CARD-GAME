//
//  ViewController.swift
//  project 1
//
//  Created by tanishq verma on 03/07/19.
//  Copyright © 2019 tanishq verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftimageview: UIImageView!
    
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    
    @IBOutlet weak var leftscorelabel: UILabel!
    
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    
    @IBAction func dealtapped(_ sender: Any) {
        
        //randomizing the numbers
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        
        
        leftimageview.image = UIImage(named: "card\(leftnumber)")
        rightimageview.image = UIImage(named: "card\(rightnumber)")
        
        if leftnumber > rightnumber {
            
            //left side wins
            leftscore += 1
            
            leftscorelabel.text = String(leftscore)
        }
        
        else if leftnumber < rightnumber {
            
            //right sides wins
            rightscore += 1
            rightscorelabel.text = String(rightscore)
        }
        
        else  {
            
            //tie
            
        }
        
        
        
        
        
    }
    
    
    
    

}

