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
        
        oneDayButton.setImage(#imageLiteral(resourceName: "icons8-Unchecked Checkbox-50"), for: .normal)
        oneDayButton.setImage(#imageLiteral(resourceName: "icons8-Checked Checkbox-50"), for: .selected)
        
        twoDayButton.setImage(#imageLiteral(resourceName: "icons8-Unchecked Checkbox-50"), for: .normal)
        twoDayButton.setImage(#imageLiteral(resourceName: "icons8-Checked Checkbox-50"), for: .selected)
        
        threeDayButton.setImage(#imageLiteral(resourceName: "icons8-Unchecked Checkbox-50"), for: .normal)
        threeDayButton.setImage(#imageLiteral(resourceName: "icons8-Checked Checkbox-50"), for: .selected)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let tracker = GAI.sharedInstance().defaultTracker else { return }
        tracker.set(kGAIScreenName, value: "FirstViewController")
        
        guard let builder = GAIDictionaryBuilder.createScreenView() else { return }
        tracker.send(builder.build() as [NSObject : AnyObject])
    }
    
    
    @IBAction func buttonActions(_ sender: UIButton) {
        
        oneDayButton.isSelected = false
        twoDayButton.isSelected = false
        threeDayButton.isSelected = false
        
        switch sender.tag {
        case 1:
            oneDayButton.isSelected = true
            twoDayButton.isSelected = false
            threeDayButton.isSelected = false
        case 2:
            oneDayButton.isSelected = false
            twoDayButton.isSelected = true
            threeDayButton.isSelected = false
        case 3:
            oneDayButton.isSelected = false
            twoDayButton.isSelected = false
            threeDayButton.isSelected = true
        default:
            break
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("transition2")
        
        GAHelper.sendCheckoutEvent(conferencePass: ConferencePass(passType: .threeDays), checkOutStep: 1)
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
