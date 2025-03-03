//
//  ContentView.swift
//  GO
//
//  Created by da fuq on 03.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      TabView {
        Tab("Главная", systemImage: "house") {
          HomeTabView()
        }
        Tab("Места", systemImage: "camera.on.rectangle") {
          PlacesTabView()
        }
        Tab("Заведения", systemImage: "figure.socialdance") {
          EstablishmentsTabView()
        }
        Tab("О приложении", systemImage: "info.circle") {
          AboutTabView()
        }
      }
    }
}

#Preview {
    ContentView()
}
