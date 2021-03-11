//
//  ContentView.swift
//  Grid Deneme
//
//  Created by Necdet Alperen Özil on 9.03.2021.
//

import SwiftUI

struct ContentView: View {
    let emojiList: [String] = ["1ali","2veli","3ali","4veli","5ali","6veli","7ali","8veli","9ali","10veli","11ali","12veli","13ali"]
    var body: some View {
        NavigationView{
            ScrollView{
                UIGrid(columns: 2, list: emojiList) {
                    emoji in
                    NavigationLink(destination: SecondViewSelam(name:emoji)){
                            Text(emoji).font(.largeTitle).padding(20)
                    }
                }
            }.navigationBarTitle("alperen")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
