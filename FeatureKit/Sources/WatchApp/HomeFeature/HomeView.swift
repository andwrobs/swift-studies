import SwiftUI

// MARK: - HomeView
public struct HomeView: View {
  
  let WIDGETS_ROW_HEIGHT: CGFloat = 50
  
  public init() {}
  
  public var body: some View {
    VStack {
      // MARK: - Content
      Image("CranioLogo")
        .resizable()
        .aspectRatio(contentMode: .fit)
      // MARK: - Widgets Row
      Grid {
        GridRow {
          LocationWidgetView()
          HealthWidgetView()
          DeviceWidgetView()
        }
      }
      .frame(height: WIDGETS_ROW_HEIGHT)
    }
  }
  
}
