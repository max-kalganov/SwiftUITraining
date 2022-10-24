# Lessons Solutions

###  Lesson 4 Task Solution
```
VStack(){
    ZStack(){
        Image("toronto").resizable().aspectRatio(contentMode: .fit).cornerRadius(15.0)
        VStack(alignment: .center){
            Text("CN Tower").font(.system(size: 36, weight: .medium))
            Text("Toronto").font(.system(size: 16, weight: .light, design: .default))
        }.padding().background(.black).cornerRadius(20).opacity(0.8).foregroundColor(.white)
        
    }
    ZStack(){
        Image("london").resizable().aspectRatio(contentMode: .fit).cornerRadius(15.0)
        VStack(){
            Text("Big Ben").font(.system(size: 36, weight: .medium))
            Text("London").font(.system(size: 16, weight: .light, design: .default))
        }.padding().background(.black).cornerRadius(20).opacity(0.8).foregroundColor(.white)
        
    }
    
}.padding(10)
```

### Lesson 10 Task Solution
```
VStack(){
    Button("Button 1"){
        print("Button 1 tapped")
    }
    Button(action: {
        print("Button2 tapped")
    }, label: {
        HStack(){
            Image(systemName: "play.fill")
            Text("Button 2")
        }
    })
}
```
