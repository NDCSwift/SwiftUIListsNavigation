//
//  ContentView.swift
//  SwiftUIListsNavigation
//
//  Created by Noah Carpenter on 2024-10-29
//
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger
//

import SwiftUI

// ContentView is the main view that displays a list of topics
struct ContentView: View {
    // Array of topics to display in the list
    let items = ["SwiftUI Basics", "Working with Lists", "Navigation in SwiftUI", "Advanced Animations"]
    
    var body: some View {
        // NavigationStack to manage navigation between views
        NavigationStack {
            // List that displays the topics
            List(items, id: \.self) { item in
                // NavigationLink to navigate to the DetailView when an item is selected
                NavigationLink(destination: DetailView(topic: item)) {
                    // Display the item with styling
                    Text(item)
                        .padding(.vertical, 8) // Padding to space out the text vertically
                        .foregroundStyle(Color.blue) // Set the text color to blue
                }
                .listRowBackground(Color.green) // Set the background color of each list row
            }
            // Title for the navigation bar
            .navigationTitle("Learning Topics")
        }
    }
}

// Preview of the ContentView to display the UI in Xcode's preview pane
#Preview {
    ContentView()
}
