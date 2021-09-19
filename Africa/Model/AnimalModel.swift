//
//  AnimalModel.swift
//  Africa
//
//  Created by Cat on 19.09.2021.
//

import SwiftUI

struct AnimalModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
