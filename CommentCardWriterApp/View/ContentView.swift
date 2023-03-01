//
//  ContentView.swift
//  CommentCardWriterApp
//
//  Created by Jaume, Louis (NA) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    let comment = Comment()
    @State var enjoyment = 2.5
    @State var selectedSubject = "Maths"
    let subjects = ["Pure Maths", "Applied Maths", "Physics", "Computer Science"]
    @State var showComment = false
    @State var currentComment = ""
    
    var body: some View {
        Form {
            VStack {
                Picker("Select Subject", selection: $selectedSubject) {
                    ForEach(subjects, id: \.self) {
                        Text("\($0)")
                    }
                }.pickerStyle(.wheel)
                Slider(value: $enjoyment, in: 0...5)
                Button("Generate comment", action: {
                    showComment = true
                    currentComment = comment.generateComment(subjectName: selectedSubject, enjoyment: enjoyment)
                }).buttonStyle(.borderedProminent).buttonBorderShape(.capsule)
                Text(currentComment)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
