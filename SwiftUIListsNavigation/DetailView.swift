//
//  DetailView.swift
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

// DetailView displays more information about a specific topic selected from the list.
struct DetailView: View {
    let topic: String // The topic passed from the previous view
    
    var body: some View {
        VStack(spacing: 20) {
            // Display the selected topic in a large title with bold font and a background
            Text(topic)
                .font(.largeTitle) // Large title font for emphasis
                .fontWeight(.bold) // Make the text bold
                .padding() // Add padding around the text
                .background(Color.blue.opacity(0.2)) // Background color with opacity
                .cornerRadius(15) // Rounded corners for the background
            
            // Informational text providing details about the topic
            Text("Here you can learn more about \(topic) in SwiftUI.")
                .font(.body) // Standard body font for this text
                .multilineTextAlignment(.center) // Center-align the text
                .padding(.horizontal) // Add horizontal padding to the text
        }
        .padding() // Add overall padding to the VStack
        .navigationTitle(topic) // Set the navigation bar title to the selected topic
        .background(Color.gray) // Set the background color to gray
    }
}

// Preview to display how the DetailView will look with a sample topic
#Preview {
    DetailView(topic: "SwiftUI Basics")
}
