//
//  VideoViewController.swift
//  A11yTube
//
//  Created by William Caruso on 12/7/17.
//  Copyright © 2017 wcaruso. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideoPlayerViewController: UIViewController {

    var videoID:String?
    var videoTitle:String?
    

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func playVideoAction(_ sender: Any) {
        print("Player trying to ply...")
        guard let path = Bundle.main.path(forResource: "a11y", ofType:"mp4") else {
            debugPrint("a11y.mp4 not found")
            return
        }
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        // Create a new AVPlayerViewController and pass it a reference to the player.
        let playerController = AVPlayerViewController()
        playerController.player = player
        // Modally present the player and call the player's play() method when complete.
        present(playerController, animated: true) {
            player.play()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.videoImageView.image = UIImage(named: self.videoID!)
        self.titleLabel.text = videoTitle!
        
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
