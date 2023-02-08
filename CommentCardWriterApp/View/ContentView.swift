//
//  ContentView.swift
//  CommentCardWriterApp
//
//  Created by Jaume, Louis (NA) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    let comment = Comment()
    @State var showComment = false
    @State var currentComment = ""
    
    var body: some View {
        VStack {
            Button("Generate comment", action: {
                showComment = true
                currentComment = comment.returnRandomComment()
            })
            Text(currentComment)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
