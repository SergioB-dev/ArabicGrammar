//
//  Word.swift
//  Word
//
//  Created by Sergio Bost on 8/8/21.
//

import SwiftUI

enum WordType {
    case article
    case subject
    case adjective
    case verb
    case preposition
    case object
    
    var color: Color {
        switch self {
        case .subject:
            return .indigo
        case .object:
            return .brown
        case .adjective:
            return .mint
        case .verb:
            return .blue
        case .article:
            return .yellow
        case .preposition:
            return .orange
        }
    }
}

struct Word: Identifiable, Hashable {
    let stringValue: String
    let type: WordType
    
    var id: String {
        stringValue + String(Int.random(in: 0...1000))
    }
}
