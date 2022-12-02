//
//  ContentView.swift
//  Word Play
//
//  Created by Daksh Nakra on 10/7/22.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please fill in all the text boxes with the kind of words they ask for:")
                HStack {
                    CustomTextField(placeholder: "BodyPart", variable: $words.bodyPart)
                    CustomTextField(placeholder: "Occupation", variable: $words.occupation)
                }
                HStack {
                    CustomTextField(placeholder: "Object", variable: $words.object)
                    CustomTextField(placeholder: "Procedure", variable: $words.procedure)
                }
                HStack {
                    CustomTextField(placeholder: "Number", variable: $words.number)
                    CustomTextField(placeholder: "Song Title", variable: $words.songTitle)
                }
                HStack {
                    CustomTextField(placeholder: "Vehicle", variable: $words.vehicle)
                    CustomTextField(placeholder: "Building", variable: $words.building)
                }
                HStack {
                    CustomTextField(placeholder: "Second Number", variable: $words.secondNumber)
                    CustomTextField(placeholder: "Unit Of Time", variable: $words.unitOfTime)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
            .navigationTitle("Word Play")
        }
    }
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct Words {
    var bodyPart = ""
    var occupation = ""
    var object = ""
    var procedure = ""
    var number = ""
    var songTitle = ""
    var vehicle = ""
    var building = ""
    var secondNumber = ""
    var unitOfTime = ""
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
