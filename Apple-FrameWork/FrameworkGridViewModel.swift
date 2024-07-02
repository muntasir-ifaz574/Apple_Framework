//
//  FrameworkGridViewModel.swift
//  Apple-FrameWork
//
//  Created by Muntasir Efaz on 7/2/24.
//

import SwiftUI

final class FrameworkGridViewMode: ObservableObject {
    var selectFramework: Framework? {
        didSet{
            isShowingDetailsView = true
        }
    }
    @Published var isShowingDetailsView = false
}
