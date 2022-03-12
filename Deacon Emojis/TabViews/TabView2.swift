
import SwiftUI

struct TabView2: View {
//    let newSwiftColor2 = UIColor(red: 242, green: 242, blue: 247)
    init() {
        Theme.navigationBarColors(background:newSwiftColor, titleColor: .white)
//        UITableView.appearance().backgroundColor = newSwiftColor2
        
        }
    
    var body: some View {
        NavigationView{
            VStack{
            Form{
                Section{
                    NavigationLink (destination: Privacy()) {
                            Text("Privacy Policy")
                        }
                    NavigationLink (destination: AppDev()) {
                            Text("Contact Us")
                        }
                }
                
                Section{
                    NavigationLink (destination: Legal()) {
                            Text("Lego Info")
                        }
                }
            }
            .padding(.top, 1)
            .background(Color("New Gold"))
            .navigationTitle ("About")
            }
        }
    }
}


struct Privacy: View {
    
    var body: some View {
        Text("Hello, here is privacy view!")
    }
}

struct AppDev: View {
    
    var body: some View {
        
        Text("Hello, here is our home! The AppDev!")
        Image("AppDev")
            .resizable(resizingMode:.stretch)
            .aspectRatio(contentMode:.fit)
            .frame(width:260, height: 260)
        Text("Richard, Michael, Jiachen, Jessica")
        Text("🎩")


    }
}

struct Legal: View {
    
    var body: some View {
        Text("Hello, here is legal information")
        
    }
}




struct TabView2_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}
