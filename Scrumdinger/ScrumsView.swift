//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Admin on 25.02.2022.
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
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrum: DailyScrum.sampleData)
    }
}
