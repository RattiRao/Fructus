//
//  SettingsView.swift
//  Fructus
//
//  Created by Ratti on 30/11/21.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentMode
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                Text("Hello, World!")
            }//: SCROLLVIEW
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                presentMode.wrappedValue.dismiss()
            }){
                Image(systemName: "xmark")
            }//: BUTTON
        )
        }//: NAVIGATION
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            
    }
}
