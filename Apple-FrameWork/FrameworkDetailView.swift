//
//  FrameworkDetailView.swift
//  Apple-FrameWork
//
//  Created by Muntasir Efaz on 7/1/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailsView: Bool
    @State private var isSafariViewShoging = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailsView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            
            Spacer()
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
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailsView: .constant(false))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
