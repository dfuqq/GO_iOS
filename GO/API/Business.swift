import Foundation

/// - Warning: **DO NOT DISPLAY**  *geo* and *zoom* fields,
///   as they used only to map's proper work
struct Business: Identifiable, Decodable {
  /// PK in DB, Short name defined as ID, not used
  let slug: String
  let name: String
  let subtitle: String
  let descriptionHeader: String
  let description: String
  let address: String
  let hours: String
  let priceFrom: String
  let priceTo: String
  let phone: String
  let insta: String
  let instaHref: String
  /// - Warning: **Don't display, dev info only**: map's coordinates with business
  let geo: [Float]
  /// - Warning: **Don't display, dev info only**: adjusts map's zoom to fit all establishments if > 1
  let zoom: Float?
  
  /// - Warning: **Don't display, dev info only**: id binding to slug for identifiable protocol
  var id: String {slug}
}

let Categories: [String: Int] = ["бары": 1, "кафе": 2, "кальянные": 3, "рестораны": 4]


/// A Function for fetching businesses by category, currently selected in TabBar
/// - Parameter category: *String*, given to find categoryId by key and pass it to query as Int
/// - Returns: Array of *Business* Structs
func getBusinessByCategory(category: String) async -> [Business] {
  var businesess: [Business] = []
  let categoryId = Categories[category]
  
  do {
    businesess = try await supabase
      .from("businesses")
      .select()
      .eq("categoryId", value: categoryId)
      .execute().value
  } catch {
    debugPrint(error)
  }
  
  return businesess
}
