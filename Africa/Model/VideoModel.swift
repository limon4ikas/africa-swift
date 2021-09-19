//
//  VideoModel.swift
//  Africa
//
//  Created by Cat on 19.09.2021.
//

import SwiftUI

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
