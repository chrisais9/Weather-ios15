//
//  WeatherDataView.swift
//  Weather-ios15
//
//  Created by chris on 2021/11/02.
//

import SwiftUI

struct WeatherDataView: View {
    var body: some View {
        VStack(spacing: 8) {
            CustomStackView {
                
                Label {
                    Text("Air Quality")
                } icon: {
                    Image(systemName: "circle.hexagongrid.fill")
                }
                
            } contentView: {
                VStack(alignment: .leading, spacing: 10) {
                    Text("143 - Moderately Polluted")
                        .font(.title3.bold())
                    Text("May cause breathing discomfort for people with lung desease such as asthma and discomfort for people with heart disease, childrean and older adults.")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.white)
            }
        }
        
        HStack {
            
            CustomStackView {
                Label{
                    Text("UV Index")
                } icon: {
                    Image(systemName: "sun.min")
                }
            } contentView: {
                VStack(alignment: .leading, spacing: 10) {
                    Text("0")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text("Low")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
            
            CustomStackView {
                Label{
                    Text("Rainfall")
                } icon: {
                    Image(systemName: "drop.fill")
                }
            } contentView: {
                VStack(alignment: .leading, spacing: 10) {
                    Text("0 mm")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text("in last 24 hours")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
            
            
        }
        .frame(maxHeight: .infinity)
        
        CustomStackView {
            Label{
                Text("10-day Forecast")
            } icon: {
                Image(systemName: "calendat")
            }
        } contentView: {
            VStack(alignment: .leading, spacing: 10) {
                ForEach(forecast) { cast in
                    VStack {
                        HStack(spacing: 15) {
                            Text(cast.day)
                                .font(.title3.bold())
                                .foregroundStyle(.white)
                                .frame(width: 60, alignment: .leading)
                            
                            Image(systemName: cast.image)
                                .font(.title3)
                                .symbolVariant(.fill)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.yellow, .white)
                                .frame(width: 30)
                            
                            Text("\(Int(cast.celcius - 5))")
                                .font(.title3.bold())
                                .foregroundStyle(.secondary)
                                .foregroundStyle(.white)
                            
                            ZStack(alignment: .leading) {
                                Capsule()
                                    .fill(.tertiary)
                                    .foregroundStyle(.white)
                                
                                GeometryReader { proxy in
                                    Capsule()
                                        .fill(.linearGradient(.init(colors: [.orange, .red]), startPoint: .leading, endPoint: .trailing))
                                        .frame(width: cast.celcius / 60 * proxy.size.width)
                                }
                            }
                            .frame(height: 4)
                            
                            Text("\(Int(cast.celcius))")
                                .font(.title3.bold())
                                .foregroundStyle(.white)
                        }
                        Divider()
                    }
                    .padding(.vertical, 8)
                }
            }
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        }
    }
}

struct WeatherDataView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
