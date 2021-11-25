//
//  ReportsListView.swift
//  ReportAbstractionExample
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct ReportsListView: View {
    var body: some View {
        List {
            
            // repace teh concrete list of names with an abstraction
            //the abstraction is using a ForEach structure to iterate over the list from the model
            //This (when the app runs) builds the list of names
            //"listOfReports? is the input list
            //The FroEach plaes a new item from the list into "currentReport" with each loop or iteration
            
            Section(header: Text("Grade 10")) {
                ForEach(listOfReports){ currentReport in
                    
                    NavigationLink(destination: {
                        
                        ReportDetailView(thisRepot: currentReport)
                        
                    }, label: {
                        
                        Text(currentReport.name)
                        
                    })
                }
            }
        }
        .listStyle(.sidebar)
        .navigationTitle("Reports")
    }
    
}

struct ReportsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReportsListView()
                .preferredColorScheme(.dark)
        }
    }
}
