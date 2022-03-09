//
//  History.swift
//  Scrumdinger
//
//  Created by Admin on 09.03.2022.
//

import Foundation


struct History: Identifiable {
    let id: UUID
    let date: Date
    var lengthInMinutes: Int
    var attendees: [DailyScrum.Attendee]
    
    init(id: UUID = UUID(), date: Date = Date(), lengthInMinutes: Int = 5, attendees: [DailyScrum.Attendee]) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
    }
}
