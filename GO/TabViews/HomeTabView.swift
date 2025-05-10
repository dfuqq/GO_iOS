//
//  HomeTabView.swift
//  GO
//
//  Created by da fuq on 03.03.2025.
//

import SwiftUI

struct HomeTabView: View {
  @State private var tapped: Bool = false
  
  var body: some View {
    Title(title: "В тренде", subtitle: "самое популярное сейчас")
    
    ScrollView {
      VStack(spacing: 12) {
        ForEach (
          1...3,
          id: \.self
        ) {_ in 
          Card(
            cardTitle: "Auditorium",
            cardDescription: "Бар",
            backgroundColor: .blue
          )
        }
      }
      .padding()
    }
  }
}

#Preview {
  HomeTabView()
}
