//
//  PlacesTabView.swift
//  GO
//
//  Created by da fuq on 03.03.2025.
//

import SwiftUI

struct PlacesTabView: View {
  var body: some View {
    VStack {
      Text("Places Screen")
        .font(.largeTitle)
        .padding()
      Image(systemName: "camera.on.rectangle")
        .resizable()
        .scaledToFit()
        .frame(width: 100, height: 100)
    }
  }
}

#Preview {
  PlacesTabView()
}
