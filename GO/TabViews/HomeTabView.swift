//
//  HomeTabView.swift
//  GO
//
//  Created by da fuq on 03.03.2025.
//

import SwiftUI

struct HomeTabView: View {
  var body: some View {
    VStack(alignment: .leading) {
      VStack(alignment: .leading) {
        HStack {
          
            Text("GO! –\nГид по Сургуту")
              .font(.title)
          Spacer()
        }
        Spacer()
        VStack (alignment: .leading) {
          HomeButtons()
        }
        Spacer()
      }
    }
    .padding()
  }
}

#Preview {
  HomeTabView()
}
