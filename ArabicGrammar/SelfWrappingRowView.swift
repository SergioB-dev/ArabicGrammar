//
//  SelfWrappingRowView.swift
//  SelfWrappingRowView
//
//  Created by Sergio Bost on 8/7/21.
//

import SwiftUI

struct SelfWrappingRowView: View {
    let rows: Int
    var availableWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    var words: [Word]
    
    var firstRow: [Word] {
        var returnWords = [Word]()
        if words.count >= 4 {
            for index in 0..<4 {
                returnWords.append(words[index])
            }
        } else {
            for index in 0..<words.count {
                returnWords.append(words[index])
            }
        }
        return returnWords
    }
    
    var secondRow: [Word] {
        var returnWords = [Word]()
        if words.count >= 8 {
            for index in 4..<8 {
                returnWords.append(words[index])
            }
        } else if words.count == 7 {
            for index in 4..<7 {
                returnWords.append(words[index])
            }
        }  else if words.count == 6 {
            for index in 4..<6 {
                returnWords.append(words[index])
            }
        }
        else if words.count == 5 {
           for index in 4..<5 {
               returnWords.append(words[index])
           }
       }
        return returnWords
    }
    var body: some View {
        GeometryReader { geo in
            doubleRowWordView(firstRow: firstRow, secondRow: secondRow)
        }
    }

    @ViewBuilder private func doubleRowWordView(firstRow: [Word], secondRow: [Word]) -> some View {
        //At the time being, every row can only accept a max of 4 words
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                ForEach(firstRow) { word in
                    WordView(word: word)
                }
            }
            HStack {
                ForEach(secondRow) { word in
                    WordView(word: word)
                }
            }
        }
    }
    @ViewBuilder private func safeView(_ word: Word?) -> some View {
        if word != nil {
            WordView(word: word!)
        }
    }
    
}





struct SelfWrappingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SelfWrappingRowView(rows: 2, words: [])
    }
}
