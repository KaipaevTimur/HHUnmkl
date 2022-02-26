//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Admin on 14.02.2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrum: DailyScrum.sampleData)
            }
        }
    }
}
