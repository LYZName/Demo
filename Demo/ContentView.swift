//
//  ContentView.swift
//  Demo
//
//  Created by liyazhou on 2025/5/9.
//

import SwiftUI
// 需要在 Xcode 中将 Demo/功能/下的各 View 文件夹添加到项目引用，否则 import 不变即可

struct ContentView: View {
    @State private var selectedFeature: Feature?
    
    var body: some View {
        NavigationStack {
            List(Feature.allCases) { feature in
                HStack {
                    Image(systemName: feature.icon)
                        .foregroundColor(feature.color)
                        .font(.title2)
                    Text(feature.title)
                        .font(.body)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                        .font(.caption)
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedFeature = feature
                }
                .padding(.vertical, 8)
            }
            .navigationTitle("功能列表")
            .navigationDestination(item: $selectedFeature) { feature in
                destinationView(for: feature)
            }
        }
    }
    
    @ViewBuilder
    private func destinationView(for feature: Feature) -> some View {
        switch feature {
        case .inAppPurchase:
            InAppPurchaseView()
        case .settings:
            SettingsView()
        case .about:
            AboutView()
        case .help:
            HelpView()
        }
    }
}

#Preview {
    ContentView()
}
