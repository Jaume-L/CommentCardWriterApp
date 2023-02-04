//
//  CommentGenerator.swift
//  CommentCardWriterApp
//
//  Created by Jaume, Louis (NA) on 04/02/2023.
//

import Foundation

class Comments {
    let comments: [String]
    
    init() {
        comments = ["Computer science is fun.", "I like computer science."]
    }
    
    func returnRandomComment() -> String {
        return comments[Int.random(in: 0..<comments.count)]
    }
}
