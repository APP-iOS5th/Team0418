//
//  ContentView.swift
//  CarInfo_ios5_heeji
//
//  Created by Heeji Jung on 4/16/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List {
                Section(header: Text("Electric Cars")) {
                    ForEach(cars.filter { $0 is ElectricCar}, id: \.id) { car in
                        NavigationLink(destination: CarDetailView(car: car)){
                            Text(car.modelName)
                        }
                    }
                }
                Section(header: Text("Oil Cars")) {
                    ForEach(cars.filter { $0 is OilCar}, id: \.id) { car in
                        NavigationLink(destination: CarDetailView(car: car)){
                            Text(car.modelName)
                        }
                    }
                }
                Section(header: Text("Hybrid Cars")) {
                    ForEach(cars.filter { $0 is HybridCar}, id: \.id) { car in
                        NavigationLink(destination: CarDetailView(car: car)){
                            Text(car.modelName)
                        }
                    }
                }
                
            }
            .padding()
            .navigationTitle("Car List")
        }
    }
}

#Preview {
    ContentView()
    //CarDetailView(car: teslaModelY)
}
