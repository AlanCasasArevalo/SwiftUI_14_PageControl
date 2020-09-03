
import SwiftUI

struct Page3: View {
    var body: some View {
        VStack{
            Text("Hello, Page3")
                .font(.system(.title, design: .rounded))
                .bold()
                .foregroundColor(Color(.darkGray))
            Image(systemName: "sun.max.fill")
                .foregroundColor(Color(.darkGray))
                .font(.system(.largeTitle, design: .rounded))
                .frame(width: 100, height: 100)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color(.lightGray))
        
    }
}

struct Page3_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
    }
}
