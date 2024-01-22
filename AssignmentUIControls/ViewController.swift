//
//  ViewController.swift
//  AssignmentUIControls
//
//  Created by user238294 on 1/21/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var count = 0;
    var active = false;
    
    @IBOutlet weak var screenNumber: UILabel!
    
    
    @IBAction func buttonInc(_ sender: Any) {
        if (active){
            count += 2;
        } else{
            count += 1;
        }
        screenNumber.text = String(count);
            }
    
    @IBAction func buttonDec(_ sender: Any) {
        count = count - 1;
        screenNumber.text = String(count);
    }
    
    @IBAction func skip(_ sender: Any) {
        if(active == true){
            active = false;
        } else {
            active = true;
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        count = 0;
        screenNumber.text = String(count);

    }
    
}

