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
    
    let gridItem : [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItem, spacing: 30){
                    ForEach(dataList){ item in
                        Text(item.emoji)
                            .font(.system(size: 80))
                    }
                }
            }.navigationTitle("Grids Vertical")
                .toolbar{
                    Menu("Opciones"){
                        Section{
                            Button("1 columna"){
                                print("Hola1")
                            }
                            Button("2 columnas"){
                                print("2 columnas")
                            }
                            Button("3 columnas"){
                                print("3 columnas")
                            }
                            Button("4 columnas"){
                                print("4 columnas")
                            }
                        }
                    }
                }
//            ScrollView(.horizontal){
//                LazyHGrid(rows: gridItem, spacing: 30){
//                    ForEach(dataList){ item in
//                        Text(item.emoji)
//                            .font(.system(size: 80))
//                    }
//                }
//            }.navigationTitle("Grids Horizontal")
        }
    }
}

struct GridList_Previews: PreviewProvider {
    static var previews: some View {
        GridList()
    }
}
