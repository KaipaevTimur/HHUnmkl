//
//  SpeakerArc.swift
//  Scrumdinger
//
//  Created by Admin on 10.03.2022.
//

import SwiftUI

struct SpeakerArc: Shape {
    let speakerIndex: Int
    let totalSpekers: Int
    
    private var degreesPerSpeaker: Double {
        360.0 / Double(totalSpekers)
    }
    private var startAngle: Angle {
        Angle(degrees: degreesPerSpeaker * Double(speakerIndex) + 1.0)
    }
    private var endAngle: Angle {
        Angle(degrees: startAngle.degrees + degreesPerSpeaker - 1.0)
    }
    
    func path(in rect: CGRect) -> Path {
        let deameter = min(rect.size.width, rect.size.height) - 24.0
        let radius = deameter / 2.0
        let centr = CGPoint(x: rect.midX, y: rect.midY)
        return Path { path in
            path.addArc(center: centr, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        }
    }
}
