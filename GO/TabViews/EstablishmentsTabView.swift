import SwiftUI

struct EstablishmentsTabView: View {
  @Namespace private var animation
  @State private var selectedTab: String = "рестораны"
  let tabs = ["рестораны", "кафе", "бары", "кальянные"]
  
  @State private var businesess: [Business] = []
  
  var body: some View {
    Title(title: "Заведения", subtitle: "для поводов и без")
    
    Group {
//      Implement correct error handling here
      if businesess.count == 0 {
        Text("error")
      }
      List(businesess) {business in
        VStack(alignment: .leading) {
          Text(business.name)
          Text(business.subtitle)
            .font(.subheadline)
          if let zoom = business.zoom {
            Text("Zoom: " + String(format: "%.1f", zoom))
              .font(.caption)
          }
        }
      }
    }
    .onChange(of: selectedTab, initial: true) { _, newTab  in
      Task {
        businesess = await getBusinessByCategory(category: newTab)
      }
    }
    
    Spacer()
    
    TabBar(selectedTab: $selectedTab, tabs: tabs, animation: animation)
  }
}

#Preview {
  EstablishmentsTabView()
}
