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
  @State private var isLoading = true
  @State private var isError = false
  
  var body: some View {
    Title(title: "Места", subtitle: "известные и не очень")
    
    Group {
      if isLoading {
        Text("Loading")
      }
      if isError {
        Text("Error")
      }
        List(places) {place in
          VStack(alignment: .leading) {
            Text(place.name)
          }
        }
      }
    .task {
      do {
        isLoading = true
        places = try await supabase.from("places").select().execute().value
      } catch {
        isError = true
        debugPrint(error)
      }
      isLoading = false
    }
    
    Spacer()
    
    TabBar(selectedTab: $selectedTab, tabs: tabs, animation: animation)
  }
  
}



#Preview {
  PlacesTabView()
}
