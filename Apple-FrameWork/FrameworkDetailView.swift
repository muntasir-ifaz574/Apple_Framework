//
//  FrameworkDetailView.swift
//  Apple-FrameWork
//
//  Created by Muntasir Efaz on 7/1/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    
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
                
            } label: {
                AFButton(title: "Learn More")
            }
            Spacer()
        }
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
