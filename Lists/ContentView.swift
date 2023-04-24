//
//  ContentView.swift
//  Lists
//
//  Created by Pierre Juarez U. on 24/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(dataList){ item in
                NavigationLink(destination: viewDetail(items: item)){
                    HStack{
                        emoji(model: item)
                        Text(item.name)
                            .font(.subheadline)
                    }
                }
            }.navigationTitle("List of items")
        }
    }
}

struct emoji: View{
    
    let model: Model
    
    var body: some View{
        ZStack{
            Text(model.emoji)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                .overlay(
                    Circle().stroke(Color.orange, lineWidth: 3)
                )
            
        }
    }
}


struct viewDetail: View {
    
    let items: Model
    
    var body: some View{
        VStack(alignment: .leading, spacing: 3, content: {
            HStack{
                emoji(model: items)
                Text(items.name)
                    .font(.largeTitle)
                Spacer()
            }
            Text(items.descriptionModel)
                .padding(.top)
            Spacer()
       })
        .padding(.all)
        .navigationBarTitle("Detail")
    }
}
