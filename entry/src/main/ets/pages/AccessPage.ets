import { Header } from '../components/CommonComponents'

@Entry
@Component
struct AccessPage {
  @State SERVER_IP: string = '192.168.1.100'
  @State AccessValueTest: number = 20
  @State defaultAlarmValue: number = 50
  @State inputAlarmValue: number = 0
  @State AlarmImgPart: Resource = $r('app.media.alarm_off')

  build() {
    Column({ space: 20 }) {
      Header({ title: '小区门禁报警系统' })
      Text('当前门禁传感器地址：' + this.SERVER_IP)
        .width('80%')
        .margin({ top: 120 })

      Text('当前门禁状态:' + this.AccessValueTest.toString())
        .width('80%')

      Row() {

        Text('门禁阀值：')
          .width('30%')

        TextInput({ placeholder: '默认值为50' })
          .width('70%')
          .height(30)
          .onChange((value: string) => {
            this.inputAlarmValue = parseInt(value)
            if (this.AccessValueTest > this.inputAlarmValue || this.AccessValueTest > this.defaultAlarmValue) {
              this.AlarmImgPart = $r('app.media.alarm_on')
            } else {
              this.AlarmImgPart = $r('app.media.alarm_off')
            }
          })
      }
      .width('80%')
      .height(40)

      Image(this.AlarmImgPart)
        .width(80)
        .height(80)

    }
    .width('100%')
    .height('100%')
  }
}