//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ratti on 27/12/21.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    var body: some View {
        VStack{
            Divider().padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if let info = content{
                    Text(info)
                }
                else if let linkLbl = linkLabel, let destination = linkDestination{
                    Link(linkLbl, destination: URL.init(string: "https://\(destination)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Test", content: "Hello world").previewLayout(.sizeThatFits)
            .padding()
    }
}
