import { Header } from '../components/CommonComponents'

@Entry
@Component
struct BandingPage {
  @State title: string = 'Hello World'

  build() {
    Column() {
      Header()
      Text("当前设备未绑定，请先绑定")
        .width('80%')
        .textAlign(TextAlign.Center)
        .fontColor(Color.Red)
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 150 })

      TextInput({ placeholder: '绑定设备ip' })
        .width('80%')
        .height(40)
        .margin({ top: 50 })

      Button("立即绑定")
        .width('80%')
        .height(40)
        .margin({ top: 50 })

    }
    .width('100%')
    .height('100%')
  }
}