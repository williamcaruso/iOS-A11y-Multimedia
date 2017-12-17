//
//  InitialViewController.swift
//  A11yTube
//
//  Created by William Caruso on 12/16/17.
//  Copyright © 2017 wcaruso. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    
    @IBOutlet weak var videoButton: UIButton!

    @IBAction func videoButton(_ sender: Any) {
        self.performSegue(withIdentifier: "video", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.videoButton.backgroundColor = UIColor.red
        
        self.videoButton.layer.cornerRadius = 20
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
