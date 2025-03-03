//
//  AboutTabView.swift
//  GO
//
//  Created by da fuq on 03.03.2025.
//

import SwiftUI

struct AboutTabView: View {
  var body: some View {
    VStack {
      Text("About Screen")
        .font(.largeTitle)
        .padding()
      Image(systemName: "info.circle.fill")
        .resizable()
        .scaledToFit()
        .frame(width: 100, height: 100)
    }
  }
}
