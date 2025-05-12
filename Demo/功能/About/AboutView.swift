import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Image(systemName: "info.circle")
                .font(.system(size: 60))
                .foregroundColor(.green)
                .padding()
            Text("关于页面")
                .font(.title)
                .padding()
            Spacer()
        }
        .navigationTitle("关于")
    }
}

#Preview {
    AboutView()
} 