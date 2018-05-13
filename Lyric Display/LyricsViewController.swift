//
//  LyricsViewController.swift
//  Lyric Display
//
//  Created by Lizzy on 2018/5/9.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class LyricsViewController: UIViewController {
    
    @IBOutlet weak var songlabel: UILabel!
    
    @IBOutlet weak var singerlabel: UILabel!
    
    @IBOutlet weak var lyrictextview: UITextView!
    
    var song = Song()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        songlabel.text = song.songname
        singerlabel.text = song.singername
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
