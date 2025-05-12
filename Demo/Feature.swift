import SwiftUI

enum Feature: CaseIterable, Identifiable {
    case inAppPurchase
    case settings
    case about
    case help
    
    var id: Self { self }
    
    var title: String {
        switch self {
        case .inAppPurchase:
            return "内购"
        case .settings:
            return "设置"
        case .about:
            return "关于"
        case .help:
            return "帮助"
        }
    }
    
    var icon: String {
        switch self {
        case .inAppPurchase:
            return "creditcard"
        case .settings:
            return "gearshape"
        case .about:
            return "info.circle"
        case .help:
            return "questionmark.circle"
        }
    }
    
    var color: Color {
        switch self {
        case .inAppPurchase:
            return .blue
        case .settings:
            return .orange
        case .about:
            return .green
        case .help:
            return .purple
        }
    }
} 