//
//  Place.swift
//  GO
//
//  Created by da fuq on 11.05.2025.
//

import Foundation

struct Place: Identifiable, Decodable {
  var slug: String
  var name: String
  var subtitle: String
  
  var id: String { slug }
}
