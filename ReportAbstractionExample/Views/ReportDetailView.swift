//
//  ReportDetailView.swift
//  ReportAbstractionExample
//
//  Created by Judy Yu on 2021-11-25.
//

import SwiftUI

struct ReportDetailView: View {
    
    //MARK: Stored Properties
     let thisRepot: Report
    
    //MARK: Computed Property
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                Text(thisRepot.name)
                
                Text("\(thisRepot.grade)")
                
                Text(thisRepot.comment)
            }
        }
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //For the "thisReport" parameter, we supply the first item from the listOfReports as an argument
        ReportDetailView(thisRepot: listOfReports.first!)
    }
}
