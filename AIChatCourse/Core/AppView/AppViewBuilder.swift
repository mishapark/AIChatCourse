//
//  AppViewBuilder.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//
import SwiftUI

struct AppViewBuilder<TabbarView: View, OnboardingView: View>: View {
  var showTabBar: Bool = false

  @ViewBuilder var tabbarView: TabbarView
  @ViewBuilder var onboardingView: OnboardingView

  var body: some View {
    ZStack {
      if showTabBar {
        tabbarView
          .transition(.move(edge: .trailing))
      } else {
        onboardingView
          .transition(.move(edge: .leading))
      }
    }
    .animation(.smooth, value: showTabBar)
  }
}

private struct PreviewView: View {
  @State private var showTabBar: Bool = false
  var body: some View {
    AppViewBuilder(showTabBar: showTabBar) {
      ZStack {
        Color.red.ignoresSafeArea()
        Text("Tabbar")
      }
    } onboardingView: {
      ZStack {
        Color.blue.ignoresSafeArea()
        Text("onboarding")
      }
    }
    .onTapGesture {
      showTabBar.toggle()
    }
  }
}

#Preview {
  PreviewView()
}
