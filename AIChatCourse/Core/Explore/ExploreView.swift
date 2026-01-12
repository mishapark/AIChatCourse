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

  let avatar = AvatarModel.mock

  var body: some View {
    NavigationStack {
      CarouselView()

      HeroCellView(
        title: avatar.name,
        subtitle: avatar.characterDescription,
        imageName: avatar.profileImage
      )
      .frame(height: 200)
      .navigationTitle("Explore")
    }
    .enableInjection()
  }
}

#Preview {
  ExploreView()
}
