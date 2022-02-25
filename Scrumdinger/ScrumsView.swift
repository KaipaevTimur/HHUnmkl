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
            ForEach(scrum, id: \.title) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
            HStack {
                Label("Settings", systemImage: "list.bullet")
                    .foregroundColor(.black)
                Spacer()
                Label("World", systemImage: "globe.europe.africa.fill")
                    .labelStyle(.trailingIcon)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrum: DailyScrum.sampleData)
    }
}
