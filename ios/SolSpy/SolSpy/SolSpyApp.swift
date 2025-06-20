//
//  SolSpyApp.swift
//  SolSpy
//
//  Created by Евгений Голота on 28.04.2025.
//

import SwiftUI

@main
struct SolSpyApp: App {
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .preferredColorScheme(.dark)
                .onOpenURL { url in
                    // Отправляем уведомление с URL для обработки в RootView
                    NotificationCenter.default.post(name: .handleUniversalLink, object: url)
                }
        }
    }
}
