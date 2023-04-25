//
//  GridList.swift
//  Lists
//
//  Created by Pierre Juarez U. on 24/04/23.
//

import SwiftUI

struct GridList: View {
    
//    let gridItem = [
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
    
    let gridItem : [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        NavigationView{
//            ScrollView{
//                LazyVGrid(columns: gridItem, spacing: 30){
//                    ForEach(dataList){ item in
//                        Text(item.emoji)
//                            .font(.system(size: 80))
//                    }
//                }
//            }.navigationTitle("Grids Vertical")
            ScrollView(.horizontal){
                LazyHGrid(rows: gridItem, spacing: 30){
                    ForEach(dataList){ item in
                        Text(item.emoji)
                            .font(.system(size: 80))
                    }
                }
            }.navigationTitle("Grids Horizontal")
        }
    }
}

struct GridList_Previews: PreviewProvider {
    static var previews: some View {
        GridList()
    }
}
