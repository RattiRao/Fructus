//
//  FruitListView.swift
//  Fructus
//
//  Created by Ratti on 22/11/21.
//

import SwiftUI

struct FruitListView: View {
    var fruits: [Fruit] = arrFruit
    @State private var isSettingShow = false
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits){ item in
                    NavigationLink.init {
                        FruitDetailView(fruit: item)
                    } label: {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isSettingShow = true
            }){
                Image(systemName: "slider.horizontal.3")
            }
                                    .sheet(isPresented: $isSettingShow){
                SettingsView()
            }
            )
        }
        .accentColor(.black)
    }
    
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: arrFruit)
    }
}
