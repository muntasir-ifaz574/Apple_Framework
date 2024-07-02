//
//  FrameworkGridView.swift
//  Apple-FrameWork
//
//  Created by Muntasir Efaz on 7/1/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewMode()
    
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
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

