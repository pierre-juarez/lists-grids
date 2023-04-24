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
                Text("\(item.name) \(item.emoji)")
            }.navigationTitle("List of items")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
