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
            ZStack {
                Color.yellow.opacity(0.88)
                
                VStack(spacing: 15){
                    Text(thisRepot.name)
                        .font(Font.custom("Brush Script MT", size: 50))
                        .font(.title)
                    
                    Text("\(thisRepot.grade)")
                        .font(.title2)
                    
                    Text("Commemt: " + thisRepot.comment)
                        .padding(.horizontal, 30)
                    
                    Spacer()
                }
                .padding(.vertical, 40)
            }
        }
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //For the "thisReport" parameter, we supply the first item from the listOfReports as an argument
        ReportDetailView(thisRepot: listOfReports.first!)
            .preferredColorScheme(.dark)
    }
}
