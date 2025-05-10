//
//  EstablishmentsTabView.swift
//  GO
//
//  Created by da fuq on 03.03.2025.
//

import SwiftUI

struct EstablishmentsTabView: View {
  @Namespace private var animation
  @State private var selectedTab: String = "рестораны"
  let tabs = ["рестораны", "кафе", "бары", "кальянные"]
  
  var body: some View {
    Title(title: "Заведения", subtitle: "для поводов и без")
    
    Spacer()
    
    TabBar(selectedTab: $selectedTab, tabs: tabs, animation: animation)
  }
}

#Preview {
  EstablishmentsTabView()
}
