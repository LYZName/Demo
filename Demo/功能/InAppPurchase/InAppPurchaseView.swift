import SwiftUI

struct InAppPurchaseView: View {
    var body: some View {
        VStack {
            Image(systemName: "creditcard")
                .font(.system(size: 60))
                .foregroundColor(.blue)
                .padding()
            Text("内购页面")
                .font(.title)
                .padding()
            Spacer()
        }
        .navigationTitle("内购")
    }
}

#Preview {
    InAppPurchaseView()
} 