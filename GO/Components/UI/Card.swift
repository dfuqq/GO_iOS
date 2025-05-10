//
//  Card.swift
//  GO
//
//  Created by da fuq on 06.04.2025.
//

import SwiftUI

struct Card: View {
  @State private var isTapped: Bool = false
  
  let cardTitle: String
  let cardDescription: String
  let backgroundColor: Color
  
    var body: some View {
      VStack {
        Spacer()
          HStack {
            VStack(alignment: .leading) {
              Text(cardTitle)
                .font(.title2)
                .fontWeight(.semibold)
              Text(cardDescription)
                .font(.headline)
                .fontWeight(.thin)
            }
            .padding()
            Spacer()
        }
          .background(.red)
      }
      .frame(height: 300)
      .background(backgroundColor)
      .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
