//
//  FruitNutrientView.swift
//  Fructus
//
//  Created by Ratti on 29/11/21.
//

import SwiftUI

struct FruitNutrientView: View {
    var fruit: Fruit
    var arrNutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals",]
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0 ..< arrNutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack(alignment: .top){
                        Group{
                            Image(systemName: "info.circle")
                            Text(arrNutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors.last!)
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//: HStack
                }
            }//: DisclosureGroup
        }//: GroupBox
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: arrFruit.first!)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
