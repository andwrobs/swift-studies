import ComposableArchitecture
import DependenciesAdditions
import SwiftUI

struct DeviceWidgetView: View {
  
  @Dependency(\.device) var device
  
  var body: some View {
    // MARK: - Layout
    VStack {
      // MARK: - Indicator
      ZStack {
        Circle()
          .stroke(Color.white.opacity(0.4), lineWidth: 1)
        Text("\(device.batteryState.rawValue)")
//        Text("\(device.name)")
          .foregroundColor(.white)
      }
      // MARK: - Label
      Text("Device")
        .font(.system(size: 12))
        .fontWeight(.medium)
    }
    .frame(maxWidth: .infinity)
  }
  
}
