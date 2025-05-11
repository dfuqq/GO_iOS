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
  
  @State private var places: [Place] = []
  
  var body: some View {
    Title(title: "Места", subtitle: "известные и не очень")
    
    if selectedTab == "памятники" {
      List(places) {place in
        VStack(alignment: .leading) {
          Text(place.name)
          Text(place.category)
            .font(.subheadline)
            .background(.red)
        }
        
      }
      .task {
        do {
          places = try await supabase.from("places").select().execute().value
        } catch {
          debugPrint(error)
        }
      }
    }
    
    Spacer()
    
    TabBar(selectedTab: $selectedTab, tabs: tabs, animation: animation)
  }
}


#Preview {
  PlacesTabView()
}
