
import SwiftUI

struct Page1: View {
    var body: some View {
        VStack{
            Text("Hello, Page1")
                .font(.system(.title, design: .rounded))
                .bold()
                .foregroundColor(Color(.yellow))
            Image(systemName: "sun.max.fill")
                .foregroundColor(Color(.yellow))
                .font(.system(.largeTitle, design: .rounded))
                .frame(width: 100, height: 100)
        }
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
    }
}
