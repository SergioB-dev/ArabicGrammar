//
//  DummyData.swift
//  DummyData
//
//  Created by Sergio Bost on 8/7/21.
//

import Foundation

struct DummyData {
    static let example1 = [Word(stringValue: "The", type: .article), Word(stringValue: "Banker", type: .subject), Word(stringValue: "ran", type: .verb), Word(stringValue: "to", type: .preposition), Word(stringValue: "the", type: .article), Word(stringValue: "store", type: .subject)]
    
    static let example2 = [Word(stringValue: "The", type: .article),
                           Word(stringValue: "Millionaire", type: .subject),
                           Word(stringValue: "did", type: .verb),
                           Word(stringValue: "not", type: .preposition),
                           Word(stringValue: "like", type: .article),
                           Word(stringValue: "his", type: .subject),
                           Word(stringValue: "neighbors", type: .object),
                           Word(stringValue: "YEP!", type: .subject)
    
    ]
    
}
