//
//  ContentView.swift
//  GridPractice
//
//  Created by Weerawut Chaiyasomboon on 01/03/2568.
//

import SwiftUI

//Grid+GridRow >> Using with static/small data

//fixed, flexible, adaptive
//LazyVGrid, LazyHGrid >> Using when working with large or dynamic data
struct ContentView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0...100,id: \.self) { _ in
                    Color.green
                        .frame(height: 50)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct GridPractice01: View {
    var body: some View {
        Grid(alignment: .leading, horizontalSpacing: 2, verticalSpacing: 20) {
            GridRow(alignment: .bottom) {
                Color.red
                    .frame(width: 50, height: 50)
                Color.green
            }
            GridRow {
                Color.teal
                Color.orange
                Color.yellow
            }
        }
    }
}

#Preview("Grid Practice01") {
    GridPractice01()
}

struct GridPractice02: View {
    var body: some View {
        VStack {
            Grid {
                GridRow {
                    Text("Exercise Name")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(maxWidth: .infinity)
                    Text("Sets")
                        .font(.system(size: 15, weight: .semibold))
                    Text("Reps")
                        .font(.system(size: 15, weight: .semibold))
                    Text("Weight(kgs)")
                        .font(.system(size: 15, weight: .semibold))
                }
                
                Divider()
                
                GridRow {
                    Text("Bench Press")
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("3")
                        .font(.system(size: 15))
                    Text("6")
                        .font(.system(size: 15))
                    Text("80")
                        .font(.system(size: 15))
                }
                
                GridRow {
                    Text("Sit up")
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("5")
                        .font(.system(size: 15))
                    Text("6")
                        .font(.system(size: 15))
                    Text("90")
                        .font(.system(size: 15))
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview("Grid Practice02") {
    GridPractice02()
}

struct LazyGridPractice: View {
    let columns = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(0...50, id: \.self) { _ in
                Color.red
                    .frame(height: 50)
            }
        }
    }
}

#Preview("LazyGridPractice") {
    LazyGridPractice()
}

struct LazyGridPractice2: View {
    let columns = [
        GridItem(.flexible(minimum: 250)),
        GridItem(.adaptive(minimum: 150, maximum: 250)),
        GridItem(.fixed(50))
    ]
    var body: some View {
        LazyVGrid(columns: columns) {
            Color.green
                .frame(height: 50)
            Color.red
                .frame(height: 50)
            Color.yellow
                .frame(height: 50)
            Color.blue
                .frame(height: 50)
        }
    }
}

#Preview("LazyGridPractice2") {
    LazyGridPractice2()
}
