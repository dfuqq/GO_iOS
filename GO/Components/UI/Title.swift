//
//  Title.swift
//  GO
//
//  Created by da fuq on 06.04.2025.
//

import SwiftUI


/// UI Component of title and optional subtitle
///
/// A component can be used to show title text,
/// w/ or w/out subtitle
///
/// - Parameters:
///     - title: Main title text. Always shown and required
///     - subtitle: Subtitle text below title. It **will not** be shown if not present when passing parameters
struct Title: View {
    let title: String
    var subtitle: String? = nil
  
    var body: some View {
      VStack {
        HStack {
          VStack(alignment: .leading) {
            Text(title)
              .font(.largeTitle)
              .fontWeight(.semibold)
              .fontWidth(.expanded)
              .textCase(.lowercase)
            if let subtitle = subtitle {
              Text(subtitle)
                .fontWeight(.light)
                .opacity(0.5)
                .textCase(.lowercase)
            }
          }
          Spacer()
        }
        .padding(.horizontal, 16)
        
      }
    }
}
