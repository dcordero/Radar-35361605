//
//  ViewController.swift
//  PauseLiveStream
//
//  Created by David Cordero on 06.11.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: AVPlayerViewController {
    
    private var currentStream: Int = 0
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        play(stream: URL(string: "https://demo-hls5-live.zahs.tv/sd/master.m3u8")!)
    }
    
    // MARK: - Private
    
    private func play(stream: URL) {
        let asset = AVAsset(url: stream)
        let playetItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playetItem)
        player?.play()
    }
}
