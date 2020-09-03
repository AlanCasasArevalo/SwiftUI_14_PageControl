
import SwiftUI

struct Page2: View {
    var body: some View {
        VStack{
            Text("Hello, Page2")
                .font(.system(.title, design: .rounded))
                .bold()
                .foregroundColor(Color(.orange))
            Image(systemName: "sun.max.fill")
                .foregroundColor(Color(.orange))
                .font(.system(.largeTitle, design: .rounded))
                .frame(width: 100, height: 100)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color(.darkGray))
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
    }
}
