//
//  StoryView.swift
//  Word Play
//
//  Created by Daksh Nakra on 10/7/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        VStack {
            Text(writeStory())
            Spacer(minLength: 200)
            NavigationLink("Back", destination:
                            ContentView())
        }
    }
    func writeStory() -> String {
        return "My \(words.bodyPart) itched so bad I went to a \(words.occupation) to help me diagnose the issue. Unfortunately, there was a \(words.object) in my \(words.bodyPart), and the \(words.occupation) said I required a \(words.procedure) to get the \(words.object) out of my \(words.procedure). After waiting for \(words.number) days, I finally got set up for the \(words.procedure). On my way to the \(words.procedure), I listened to \(words.songTitle) on the radio in the \(words.vehicle), honestly a really soothing song. I finally arrived at the \(words.building) to get the \(words.procedure) after being in the \(words.vehicle) for \(words.secondNumber) \(words.unitOfTime)s long. Sadly before the \(words.procedure), I died, and I’m writing this text in the afterlife, woah."
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}


