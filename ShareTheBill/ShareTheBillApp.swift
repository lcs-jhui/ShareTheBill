//
//  ShareTheBillApp.swift
//  ShareTheBill
//
//  Created by Russell Gordon on 2023-02-02.
//

import SwiftUI

@main
struct ShareTheBillApp: App {
    
    //MARK: Stored Properties
    @State var history: [Result] = []   // Begins as empty list
    
    
    //MARK: Computed Properties
    var body: some Scene {
        WindowGroup {
            TabView {
                CalculationView(history: $history)
                    .tabItem {
                        Image(systemName: "rectangle.split.2x2")
                        Text("Calculator")
                    }
                
                HistoryView(history: $history)
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("History")
                    }
            }
        }
    }
}
