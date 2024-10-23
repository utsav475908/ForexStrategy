import SwiftUI
import PDFKit

enum Strategy {
    case Mulham
    case Fractal
    case OrderBlockRating
}

struct StrategyPDF {
    static let Mulham = "sample"
    static let Fractal = "sample"
    static let OrderBlockRating = "sample"
}



// Step 1: PDFKitView to wrap PDFView (from PDFKit) in SwiftUI
struct PDFKitView: UIViewRepresentable {
    var url: URL

    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = PDFDocument(url: url) // Load PDF from the provided URL
        pdfView.autoScales = true // Automatically scale the PDF to fit the view
        return pdfView
    }

    func updateUIView(_ pdfView: PDFView, context: Context) {
        // Nothing to update here since PDFView doesn't change dynamically
    }
}


struct OrderBlockRating: View {
    var body: some View {
        if let pdfURL = Bundle.main.url(forResource: StrategyPDF.Fractal, withExtension: "pdf") {
            PDFKitView(url: pdfURL) // Use the PDFKitView to display the PDF
                .edgesIgnoringSafeArea(.all) // Fullscreen for PDF viewing
        } else {
            Text("PDF not found")
        }
    }
}




struct ContentView: View {
    var body: some View {
        TabView {
            MulhamStrategyView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            FractalStrategyView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }

            // Settings tab displaying the PDF using PDFKit
            OrderBlockRating()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }
    }
}

// Placeholder views for Home and Search tabs
struct HomeView: View {
    var body: some View {
        Text("Home Tab")
            .font(.largeTitle)
            .padding()
    }
}

struct SearchView: View {
    var body: some View {
        Text("Search Tab")
            .font(.largeTitle)
            .padding()
    }
}

// App Entry Point
@main
struct MyTabApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

