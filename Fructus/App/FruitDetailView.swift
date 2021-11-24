//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Ratti on 24/11/21.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(alignment: .center, spacing: 20){
                    //Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors.last!)
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrients
                        
                        
                        //Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors.last!)
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                                                
                        //Link
                    }//: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }//: VStack
                .navigationBarTitleDisplayMode(.inline)
            }//: ScrollView
            .edgesIgnoringSafeArea(.top)
            
        }//: Navigation
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: arrFruit.first!).previewDevice("iPhone 11")
    }
}
