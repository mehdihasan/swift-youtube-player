//
//  ViewController.swift
//  YouTubePlayer
//
//  Created by Mehdi Hasan on 8/9/17.
//  Copyright © 2017 Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let videoIds = ["M7lc1UVf-VE", "D4Q145EOdiM", "hrvgsk8eX24", "omqcuD1AxUU", "-3uiFhI18g8", "vg9cNFPQFqM"];
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "View", bundle: nil), forCellReuseIdentifier: "yt_cell")
    }
}


extension ViewController: UITableViewDataSource {
    
    // MARK: uitableview datasource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "yt_cell", for: indexPath) as! ViewCell
        cell.playerView.load(withVideoId: self.videoIds[indexPath.row])
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoIds.count
    }

}
