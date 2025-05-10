//
//  TabBar.swift
//  GO
//
//  Created by da fuq on 11.05.2025.
//

import SwiftUI

struct TabBar: View {
  @Binding var selectedTab: String
  let tabs: [String]
  let animation: Namespace.ID
  
  var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        HStack {
          ForEach(tabs, id: \.self) { tab in
            Button(action: {
              withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
                selectedTab = tab
              }
            }) {
              Text(tab)
                .fontWeight(.semibold)
                .lineLimit(1)
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
                .foregroundColor(.white)
                .background(
                  ZStack {
                    if selectedTab == tab {
                      Capsule()
                        .fill(Color.white.opacity(0.3))
                        .matchedGeometryEffect(id: "selectedTab", in: animation)
                    }
                  }
                )
            }
          }
        }
      }
      .frame(height: 40)
      .background(.ultraThinMaterial)
      .clipShape(Capsule())
      .overlay(
        Capsule()
          .stroke(Color.white.opacity(0.3), lineWidth: 1)
      )
      .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4)
      .padding(.horizontal)
    }
}
