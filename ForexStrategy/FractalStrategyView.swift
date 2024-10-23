import SwiftUI

struct FractalStrategyView: View {
    var body: some View {
        VStack {
       
            if let pdfURL = Bundle.main.url(forResource: PDFFileName.fractal, withExtension: "pdf") {
                WebView(url: pdfURL)
                    .edgesIgnoringSafeArea(.all)
            } else {
                
                Text("FractalStrategy")
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

struct FractalStrategyView_Previews: PreviewProvider {
    static var previews: some View {
        FractalStrategyView()
    }
}
