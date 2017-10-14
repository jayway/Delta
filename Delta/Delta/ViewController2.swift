//
//  ViewController2.swift
//  Delta
//
//  Created by Alexander Lindgren on 2017-10-14.
//  Copyright © 2017 Alexander Lindgren. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var oneDayButton: UIButton!
    @IBOutlet weak var twoDayButton: UIButton!
    @IBOutlet weak var threeDayButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceLabel.text = ""
        
        
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
