//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ratti on 05/09/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(arrFruit[0 ..< 5]){ item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
