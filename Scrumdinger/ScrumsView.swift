//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by kaipaevTimur on 25.02.2022.
//

import SwiftUI

struct ScrumsView: View {
    let scrum: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrum) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
                    .foregroundColor(.red)
            }
            .accessibilityLabel("New Scrum")
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrum: DailyScrum.sampleData)
        }
    }
}
