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
        
        priceLabel.text = "14000kr"
        
        //oneDayButton.setBackgroundColor(color: UIColor.black, forUIControlState: .normal)
        //oneDayButton.setBackgroundColor(color: UIColor.red, forUIControlState: .selected)
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonActions(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            oneDayButton.isSelected = true
            twoDayButton.isSelected = false
            threeDayButton.isSelected = false
        case 2:
            twoDayButton.isHighlighted = true
        case 3:
            threeDayButton.isHighlighted = true
        default:
            break
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("transition2")
        
        
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

extension UIButton {
    private func imageWithColor(color: UIColor) -> UIImage {
        //let rect = CGRect(x: 0.0,y: 0.0,width: 1.0,height: 1.0)
        let rect = self.bounds
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
    
    func setBackgroundColor(color: UIColor, forUIControlState state: UIControlState) {
        self.setBackgroundImage(imageWithColor(color: color), for: state)
    }
}
