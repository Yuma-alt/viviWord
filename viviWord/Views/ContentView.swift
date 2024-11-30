import SwiftUI

struct ContentView: View {
    @State private var originalImage: UIImage? = UIImage(named: "blurry_text_image")
    @State private var processedImage: UIImage?

    var body: some View {
        VStack {
            if let image = processedImage ?? originalImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }
            HStack {
                Button("シャープ化") {
                    if let image = originalImage {
                        processedImage = ImageProcessing.sharpenImage(image: image)
                    }
                }
                Button("デブラー") {
                    if let image = originalImage {
                        processedImage = ImageProcessing.deblurImage(image: image)
                    }
                }
            }
        }
    }
}
