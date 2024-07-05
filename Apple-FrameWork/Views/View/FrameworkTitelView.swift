//
//  FrameworkTitelView.swift
//  Apple-FrameWork
//
//  Created by Muntasir Efaz on 7/2/24.
//

import SwiftUI

struct FrameworkTitelView: View {
    let framwork: Framework
    
    var body: some View {
        VStack{
            Image(framwork.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framwork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitelView(framwork: MockData.sampleFramework)
}
