import SwiftUI

struct MulhamStrategyView: View {

    var body: some View {
        if let pdfURL = Bundle.main.url(forResource: StrategyPDF.Fractal, withExtension: "pdf") {
            PDFKitView(url: pdfURL) // Use the PDFKitView to display the PDF
                .edgesIgnoringSafeArea(.all) // Fullscreen for PDF viewing
        } else {
            Text("PDF not found")
        }
    }
}

struct MulhamStrategyView_Previews: PreviewProvider {
    static var previews: some View {
        MulhamStrategyView()
    }
}
