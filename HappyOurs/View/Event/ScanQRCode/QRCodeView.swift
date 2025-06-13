//
//  QRCodeView.swift
//  HappyOurs
//
//  Created by caroletm on 12/06/2025.
//
import SwiftUI
import CoreImage.CIFilterBuiltins

struct QRCodeView: View {
    @EnvironmentObject var userManager: UserManager
    private var event: Event {
        .defaultEvent
    }
    let text: String = "https://www.bizouk.com/events/details/tropical-summer-party/100289"
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    var body: some View {
        VStack {
            Text ("Ton cocktail gratuit")
                .font(.system(size: 20))
            Spacer()
                .frame(height: 20)
            Image(uiImage: generateQRCode(from: text))
                .interpolation(.none)
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
    func generateQRCode(from string: String) -> UIImage {
        let data = Data(string.utf8)
        filter.setValue(data, forKey: "inputMessage")
        
        let outputImage = filter.outputImage!
        let cgImage = context.createCGImage(outputImage, from: outputImage.extent)!
        return UIImage(cgImage: cgImage)
    }
}

#Preview {
    QRCodeView()
}
