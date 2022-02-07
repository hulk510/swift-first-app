//
//  ContentView.swift
//  Shared
//
//  Created by 後藤遥 on 2022/02/07.
// reactと一緒で一つにまとめてないとviewが別れてしまう
// SwiftUIがあるおかげである程度簡単にUIを作れるしGUIでの操作もできるって感じか。
// プレビューはstaticとliveがあって普通に出てるのはstaticでボタンの動きとかは見れない。再生ボタン押せばいける。
import SwiftUI

struct ContentView: View {
    @State var outputText = "hello, world!"
    var body: some View {
        // VStackは縦方向に並べてひとまとめにするやつ、
        // 横ならHStackやからhorizonalとverticalかな
        VStack{
            Text(outputText)
                .font(.title2)
                .fontWeight(.bold)
                .padding()
            Button(action: {
                outputText = "Hi, Siri!!!"
            }) {
                Text("切り替えボタン")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
            }
            
        }
    }
}

// これがあるからcanvasにpreview出てる
// previewDevice複数出したり、固定で指定したりできる。
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {        
        ContentView()
    }
}

// command a で全行選択して
// control i で整形。保存したときに整形して欲しい
