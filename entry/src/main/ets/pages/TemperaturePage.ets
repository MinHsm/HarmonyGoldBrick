import router from '@ohos.router';
import { Header } from '../components/CommonComponents';

@Entry
@Component
struct TemperaturePage {
  @State SERVER_IP: string = '192.168.1.100'
  @State temperValueTest: number = 20
  @State defaultAlarmValue: number = 50
  @State inputAlarmValue: number = 0
  @State AlarmImgPart: Resource = $r('app.media.alarm_off')

  build() {
    Column({ space: 20 }) {
      Header({ title: '机房控温报警系统' })
      Text('当前温度传感器地址：' + this.SERVER_IP)
        .width('80%')
        .margin({ top: 120 })

      Text('当前机房温度:' + this.temperValueTest.toString())
        .width('80%')

      Row() {

        Text('温度阀值：')
          .width('30%')

        TextInput({ placeholder: '默认值为50' })
          .width('70%')
          .height(30)
          .onChange((value: string) => {
            this.inputAlarmValue = parseInt(value)
            if (this.temperValueTest > this.inputAlarmValue || this.temperValueTest > this.defaultAlarmValue) {
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