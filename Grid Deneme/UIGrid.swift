//
//  UIGrid.swift
//  Grid Deneme
//
//  Created by Necdet Alperen Özil on 9.03.2021.
//

import SwiftUI

struct UIGrid<Content: View, T: Hashable>: View {
    
    private let columns: Int
    private var list: [[T]] = []
    private let content: (T) -> Content
    
    init(columns: Int, list: [T], @ViewBuilder content:@escaping (T) -> Content) {
        self.columns = columns
        self.content = content
        self.setupList(list)
    }
    
    private mutating func setupList(_ list: [T]) {
        var column = 0
        var columnIndex = 0
        
        for object in list {
            if columnIndex < self.columns {
                if columnIndex == 0 {
                    self.list.insert([object], at: column)
                    columnIndex += 1
                }else {
                    self.list[column].append(object)
                    columnIndex += 1
                }
            }else {
                column += 1
                self.list.insert([object], at: column)
                columnIndex = 1
            }
        }
    }
    
    var body: some View {
        VStack {
            ForEach(0 ..< self.list.count, id: \.self) { i  in
                HStack {
                    ForEach(self.list[i], id: \.self) { object in
                            self.content(object)
                                .frame(width: .infinity)
                    }
                }
            }
            
        }
    }
}

struct UIGrid_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView() {
            UIGrid(columns: 4, list: ["ali","veli"]) { emoji in
                Text(emoji)
                    .font(.largeTitle)
            }
            
        }
    }
}
