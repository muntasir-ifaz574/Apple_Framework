//
//  FrameworkDetailView.swift
//  Apple-FrameWork
//
//  Created by Muntasir Efaz on 7/1/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
   
    @State private var isSafariViewShoging = false
    
    var body: some View {
        VStack{
            FrameworkTitelView(framwork: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                self.isSafariViewShoging = true
            } label: {
                AFButton(title: "Learn More")
            }
            Spacer()
        }
        .fullScreenCover(isPresented: $isSafariViewShoging) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string:"apple.com")!)
        }
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
