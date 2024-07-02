//
//  XDismissButton.swift
//  Apple-FrameWork
//
//  Created by Muntasir Efaz on 7/2/24.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailsView: Bool
    var body: some View {
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
    }
}

#Preview {
    XDismissButton(isShowingDetailsView: .constant(false))
}
