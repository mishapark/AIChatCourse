import SwiftUI

struct HeroCellView: View {
  var title: String? = "This is some title"
  var subtitle: String? = "This is some subtitle"
  var imageName: String? = Constants.randomImage

  var body: some View {
    ZStack {
      if let imageName {
        ImageLoaderView(urlString: imageName)
      }
    }
    .overlay(
      alignment: .bottomLeading,
      content: {
        VStack(alignment: .leading, spacing: 4) {
          if let title {
            Text(title)
              .font(.headline)
          }
          if let subtitle {
            Text(subtitle)
              .font(.subheadline)
          }
        }
        .foregroundStyle(.white)
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
          LinearGradient(
            colors: [
              .black.opacity(0),
              .black.opacity(0.3),
              .black.opacity(0.4),
            ],
            startPoint: .top,
            endPoint: .bottom
          )
        )
      }
    )
    .cornerRadius(16)
  }
}

#Preview {
  HeroCellView()
}
