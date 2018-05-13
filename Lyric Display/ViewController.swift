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
    
    var songs : [Song] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        songsview.dataSource = self
        songsview.delegate = self
        songs = makeSongArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let song = songs[indexPath.row]
        cell.textLabel?.text = "🎶" + " " + song.songname
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let song = songs[indexPath.row]
        performSegue(withIdentifier: "movetolyrics", sender: song)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let LyricsVC = segue.destination as! LyricsViewController
        LyricsVC.song = sender as! Song
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeSongArray() -> [Song] {
        let song1 = Song()
        song1.singername = "不才"
        song1.songname = "大鱼"
        
        let song2 = Song()
        song2.singername = "Hebe"
        song2.songname = "灵魂伴侣"
        
        let song3 = Song()
        song3.singername = "陈粒"
        song3.songname = "小半"
        
        let song4 = Song()
        song4.singername = "谢春花"
        song4.songname = "借我"
        
        let song5 = Song()
        song5.singername = "金玟岐"
        song5.songname = "姗姗"
        
        return [song1, song2, song3, song4, song5]
    }
    
}

