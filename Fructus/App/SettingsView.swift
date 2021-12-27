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
                VStack(spacing: 20){
                    GroupBox.init {
                        Divider().padding(.vertical, 4)
                        
                        HStack(spacing: 10){
                            Image("lime")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80, height: 80)
                                .cornerRadius(9)
                            Text("sfh;lsghf;lgkhdlkgsdlgjdfklfhkahlksdjfhaskdfjaksfjhaksldfjhasdlkfjshdkfjsdahfklsadfhklasjfhaklsjfhsaklfjhsaklfjsadhfklsaj")
                        }
                        
                    } label: {
                        SettingsLabelView(lblTitle: "Fructus", lblImg: "info.circle")
                    }
                    
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website" , linkLabel: "SwiftUI Masterclass" , linkDestination: "swiftuimasterclass.com")
                        
                    } label: {
                        SettingsLabelView(lblTitle: "Application", lblImg: "apps.iphone")
                    }

                }
                .padding()
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
            .preferredColorScheme(.dark)
            
    }
}
