//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Ratti on 27/12/21.
//

import SwiftUI

struct SettingsLabelView: View {
    var lblTitle: String
    var lblImg: String
    var body: some View {
        HStack{
            Text(lblTitle)
            Spacer()
            Image(systemName: lblImg)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(lblTitle: "Fructus", lblImg: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
