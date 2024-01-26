//
//  ContentView.swift
//  EmojiLover
//
//  Created by Pellegrino da Silva, Gabriel on 26/01/2024.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😀, 😃, 😄, 😁
}

struct ContentView: View {
    @State var selection: Emoji = .😄
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .padding()
            .navigationTitle("Emoji Lovers!")
        }
    }
}

#Preview {
    ContentView()
}
