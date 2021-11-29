//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Ratti on 26/11/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox{
            HStack(){
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL.init(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//: HStack
            .font(.footnote)
            
        }//: Group Box
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView().previewLayout(.sizeThatFits)
            .padding()
    }
}
