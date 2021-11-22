//
//  FruitListView.swift
//  Fructus
//
//  Created by Ratti on 22/11/21.
//

import SwiftUI

struct FruitListView: View {
    var fruits: [Fruit] = arrFruit
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits){ item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
    
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: arrFruit)
    }
}
