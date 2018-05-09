//
//  LyricsViewController.swift
//  Lyric Display
//
//  Created by Lizzy on 2018/5/9.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class LyricsViewController: UIViewController {

    @IBOutlet weak var songnamelabel: UILabel!
    
    @IBOutlet weak var lyricscontentlabel: UILabel!
    
    var song = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        songnamelabel.text = "🎼" + " " + song

        if song == "不才 - 大鱼" {
            lyricscontentlabel.text = "海浪无声将夜幕深深淹没" + "漫过天空尽头的角落"}
        if song == "Hebe - 灵魂伴侣" {
            lyricscontentlabel.text = "如果你是春天里的风"}
        if song == "陈粒 - 小半" {
            lyricscontentlabel.text = "小半"}
        if song == "谢春花 - 借我" {
            lyricscontentlabel.text = "借我"}
        if song == "金玟岐 - 姗姗" {
            lyricscontentlabel.text = "姗姗，你最近好吗"}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
