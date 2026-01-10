//
//  ExploreView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//

import SwiftUI

struct ExploreView: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif

  var body: some View {
    NavigationStack {
      HeroCellView()
    }
    .enableInjection()
  }
}

#Preview {
  ExploreView()
}
