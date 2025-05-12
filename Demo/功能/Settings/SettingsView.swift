import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Image(systemName: "gearshape")
                .font(.system(size: 60))
                .foregroundColor(.orange)
                .padding()
            Text("设置页面")
                .font(.title)
                .padding()
            Spacer()
        }
        .navigationTitle("设置")
    }
}

#Preview {
    SettingsView()
} 