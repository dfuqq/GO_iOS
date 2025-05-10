//
//  PlacesTabView.swift
//  GO
//
//  Created by da fuq on 03.03.2025.
//

import SwiftUI

struct PlacesTabView: View {
  @Namespace private var animation
  @State private var selectedTab: String = "все"
  let tabs = ["все", "парки", "памятники", "музеи", "test"]
  
  var body: some View {
    Title(title: "Места", subtitle: "известные и не очень")
    
    Spacer()
    
    TabBar(selectedTab: $selectedTab, tabs: tabs, animation: animation)
  }
}


#Preview {
  PlacesTabView()
}
