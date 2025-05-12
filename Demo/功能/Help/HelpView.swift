import SwiftUI

struct HelpView: View {
    var body: some View {
        VStack {
            Image(systemName: "questionmark.circle")
                .font(.system(size: 60))
                .foregroundColor(.purple)
                .padding()
            Text("帮助页面")
                .font(.title)
                .padding()
            Spacer()
        }
        .navigationTitle("帮助")
    }
}

#Preview {
    HelpView()
} 