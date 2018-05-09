//
//  ViewController.swift
//  Lyric Display
//
//  Created by Lizzy on 2018/5/9.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var songsview: UITableView!
    
    var songs = ["不才 - 大鱼", "Hebe - 灵魂伴侣", "陈粒 - 小半", "谢春花 - 借我", "金玟岐 - 姗姗"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        songsview.dataSource = self
        songsview.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "🎶" + " " + songs[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let song = songs[indexPath.row]
        performSegue(withIdentifier: "movetolyrics", sender: song)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let LyricsVC = segue.destination as! LyricsViewController
        LyricsVC.song = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

