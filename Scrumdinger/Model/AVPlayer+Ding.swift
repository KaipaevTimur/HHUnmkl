//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by Admin on 09.03.2022.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Falled to find sound file") }
        return AVPlayer(url: url)
    }()
}
