import ComposableArchitecture
import DependenciesAdditions
import SwiftUI

struct HealthWidgetView: View {
  
  var body: some View {
    // MARK: - Layout
    VStack {
      // MARK: - Indicator
      ZStack {
        Circle()
          .stroke(Color.white.opacity(0.4), lineWidth: 1)
        Text("B")
          .foregroundColor(.white)
      }
      // MARK: - Label
      Text("Health")
        .font(.system(size: 12))
        .fontWeight(.medium)
    }
    .frame(maxWidth: .infinity)
  }
  
}
