//
//  FrameworkGridViewModel.swift
//  Apple-FrameWork
//
//  Created by Muntasir Efaz on 7/2/24.
//

import SwiftUI

final class FrameworkGridViewMode: ObservableObject {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
}
