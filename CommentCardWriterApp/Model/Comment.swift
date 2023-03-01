//
//  CommentGenerator.swift
//  CommentCardWriterApp
//
//  Created by Jaume, Louis (NA) on 04/02/2023.
//

import Foundation

class Comment {
    let comments: [String]
    
    init() {
        comments = ["I have hated ","I have not enjoyed ", "I have enjoyed ", "I have loved ", "so far this half."]
    }
    
    func generateComment(subjectName: String, enjoyment: Double) -> String {
        if enjoyment < 1 {
            return "\(comments[0])\(subjectName)\(comments[-1])"
        } else if enjoyment < 2.5 {
            return "\(comments[1])\(subjectName)\(comments[-1])"
        } else if enjoyment < 4 {
            return "\(comments[2])\(subjectName)\(comments[-1])"
        } else {
            return "\(comments[3])\(subjectName)\(comments[-1])"
        }
    }
}
