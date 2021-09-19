//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Cat on 19.09.2021.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
  if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
    videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: "mp4")!)
    videoPlayer?.play()
  }
  return videoPlayer!
}
