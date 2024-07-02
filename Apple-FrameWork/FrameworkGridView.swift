//
//  FrameworkGridView.swift
//  Apple-FrameWork
//
//  Created by Muntasir Efaz on 7/1/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewMode()
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitelView(framwork: framework)
                            .onTapGesture {
                                viewModel.selectFramework = framework
                                
                            }
                        
                    }
                }
            }
            .navigationTitle("🍏 Framework")
            .sheet(isPresented: $viewModel.isShowingDetailsView){
                FrameworkDetailView(framework: viewModel.selectFramework ?? MockData.sampleFramework,
                                    isShowingDetailsView: $viewModel.isShowingDetailsView
                )
            }
        }
        
        
        
        
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

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
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
