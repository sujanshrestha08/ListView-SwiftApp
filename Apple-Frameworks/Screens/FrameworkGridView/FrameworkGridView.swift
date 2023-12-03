//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Sujan on 30/11/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView  {
            List{
                ForEach(MockData.frameworks) {
                    framework in
                    NavigationLink(
                        destination:
                            FrameworkDetailView(
                                isShowingDetailView : $viewModel.isShowingDetailView, framework: framework
                            )
                    )
                    {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }.navigationTitle("🍏 Frameworks")
        }.accentColor(Color(.label))
    }
}


#Preview {
    FrameworkGridView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}


