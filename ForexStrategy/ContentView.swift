import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        
        TabView {
            FractalStrategyView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("FractalStrategy")
                }

            MulhamStrategyView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("MulhamStrategy")
                }
            
                .accentColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct PDFFileName {
    static let fractal = "sample"
    static let mulham = "sample"
}

