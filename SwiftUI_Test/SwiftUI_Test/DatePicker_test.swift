//
//  DatePicker.swift
//  SwiftUI_Test
//
//  Created by 이정훈 on 2023/02/27.
//

import SwiftUI

struct DatePicker_test: View {
    @State private var seletedDate: Date = Date()   //선택한 날짜를 저장할 변수
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: seletedDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: seletedDate)!
        
        return min...max
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            DatePicker(selection: $seletedDate, in: dateRange, displayedComponents: .date) {
                Text("날짜 선택")
            }
            
            HStack {
                Text("선택된 날짜")
                Spacer()
                
                Text(seletedDate, style: .date)
            }
        }
        .padding()
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_test()
    }
}
