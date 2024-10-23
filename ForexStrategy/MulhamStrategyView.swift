import SwiftUI

struct MulhamStrategyView: View {
    var body: some View {
        VStack {
       
            if let pdfURL = Bundle.main.url(forResource: PDFFileName.mulham, withExtension: "pdf") {
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

struct MulhamStrategyView_Previews: PreviewProvider {
    static var previews: some View {
        MulhamStrategyView()
    }
}
