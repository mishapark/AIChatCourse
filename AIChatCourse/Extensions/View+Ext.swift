//
//  View+Ext.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//

import SwiftUI

extension View {
  func callToActionButton() -> some View {
    self
      .font(.headline)
      .foregroundStyle(.white)
      .frame(maxWidth: .infinity)
      .frame(height: 55)
      .background(.accent)
      .cornerRadius(16)
  }
}
