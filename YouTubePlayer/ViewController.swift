//
//  ViewController.swift
//  YouTubePlayer
//
//  Created by Mehdi Hasan on 8/9/17.
//  Copyright © 2017 Mehdi. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController {
    
    @IBOutlet weak var youTubePlayerView: YTPlayerView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        youTubePlayerView.load(withVideoId: "M7lc1UVf-VE")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

