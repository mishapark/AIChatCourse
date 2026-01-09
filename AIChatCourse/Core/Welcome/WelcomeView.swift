//
//  WelcomeView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//

import SwiftUI

struct WelcomeView: View {
  var body: some View {
    @State var imageName: String = Constants.randomImage

    NavigationStack {
      VStack(spacing: 8) {
        ImageLoaderView(urlString: imageName)
          .ignoresSafeArea()

        titleSection
          .padding(.top, 24)

        ctaButtons

        policyLinks
      }
    }
  }

  private var titleSection: some View {
    VStack(spacing: 8) {
      Text("AI Chat 👍")
        .font(.largeTitle)
        .fontWeight(.semibold)
      Text("YouTube @ Swiftful Thinking")
        .font(.caption)
        .foregroundStyle(.secondary)
    }
  }

  private var ctaButtons: some View {
    VStack(spacing: 8) {
      NavigationLink {
        OnboardingCompletedView()
      } label: {
        Text("Get Started")
          .callToActionButton()
      }
      .padding(16)

      Text("Already have an account? Sign In!")
        .underline()
        .font(.body)
        .padding(8)
        .tappableBackground()
        .onTapGesture {}
    }
  }

  private var policyLinks: some View {
    HStack(spacing: 8) {
      Link(destination: URL(string: Constants.termsOfServiceUrl)!) {
        Text("Terms of Service")
      }

      Circle().fill(.accent).frame(width: 4, height: 4)

      Link(destination: URL(string: Constants.termsOfServiceUrl)!) {
        Text("Privacy Policy")
      }
    }
  }
}

#Preview {
  WelcomeView()
}
