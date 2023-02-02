//
//  HistoryView.swift
//  ShareTheBill
//
//  Created by Justin Hui on 2/2/2023.
//

import SwiftUI

struct HistoryView: View {
    
    //MARK: Stored Properties
    @Binding var history: [Result]
    
    //MARK: Computed Properties
    var body: some View {
        VStack {
            
            Text("History")
                .font(.headline.smallCaps())
                .padding()
            
            List(history.reversed()) { somePriorResult in
                ResultView(priorResult: somePriorResult)
            }

        }    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: Binding.constant(historyForPreviews))
    }
}
