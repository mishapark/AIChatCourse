//
//  ImageLoaderView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-09.
//

import SDWebImageSwiftUI
import SwiftUI

struct ImageLoaderView: View {
  var urlString: String = Constants.randomImage
  var resizingMode: ContentMode = .fill

  #if DEBUG
  @ObserveInjection var forceRedraw
  #endif

  var body: some View {
    Rectangle()
      .opacity(0)
      .overlay(
        WebImage(url: URL(string: urlString))
          .resizable()
          .indicator(.activity)
          .aspectRatio(contentMode: resizingMode)
          .allowsHitTesting(false)
      )
      .clipped()
      .enableInjection()
  }
}

#Preview {
  ImageLoaderView()
}
