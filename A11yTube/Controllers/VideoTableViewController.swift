//
//  VideoTableViewController.swift
//  A11yTube
//
//  Created by William Caruso on 12/7/17.
//  Copyright © 2017 wcaruso. All rights reserved.
//

import UIKit


class VideoTableViewController: UITableViewController {

    var videoIDs = ["a11y", "water", "surfers", "traffic", "clock", "bird"]
    var videoTitles = ["A11y Tips + Tricks","Water", "Surfers", "Traffic", "Clock Tower", "Bird"]
    var selectedVideoIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.rowHeight = 120
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return videoIDs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "videocell", for: indexPath) as! VideoTableViewCell
        cell.titleLabel.text = self.videoTitles[indexPath.row]
        cell.thumbnailImage.image = UIImage(named: self.videoIDs[indexPath.row]+".png")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedVideoIndex = indexPath.row
        self.performSegue(withIdentifier: "videoDetail", sender: self)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "videoDetail"
        {
            if let destinationVC = segue.destination as? VideoPlayerViewController {
                destinationVC.videoID = self.videoIDs[self.selectedVideoIndex]
                destinationVC.videoTitle = self.videoTitles[self.selectedVideoIndex]

            }
        }
    }
 

}
