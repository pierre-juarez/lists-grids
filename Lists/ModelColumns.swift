//
//  ModelColumns.swift
//  Lists
//
//  Created by Pierre Juarez U. on 27/05/23.
//

import Foundation
import Combine
import SwiftUI

class ModelColumns: ObservableObject {
    
    @Published var gridItem = [GridItem()]
    
    func numberColumns(number: Int){
        gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: number)
    }
    
}
