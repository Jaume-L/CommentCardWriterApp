//
//  CommentView.swift
//  CommentCardWriterApp
//
//  Created by Jaume, Louis (NA) on 08/02/2023.
//

import SwiftUI

struct CommentView: View {
    let comment = Comment()
    
    var body: some View {
        Text(comment.returnRandomComment())
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}
