class RouterInfo {
  //页面路径
  url: string

  constructor(url: string) {
    this.url = url
  }
}

import router from '@ohos.router'

@Extend(Button) function btn_style() {
  .height("100%")
  .backgroundColor(Color.Gray)
  .width('40%')
  .type(ButtonType.Normal)
  .borderRadius(15)
}

@Entry
@Component
struct Index {

  build() {
    Column({ space: 20 }) {
      Text("智能管理")
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)

      Row({ space: 40 }) {
        Button("烟雾报警系统")
          .btn_style()
          .onClick(() => {
            router.pushUrl({
              url: 'pages/SmokePage'
            },
              router.RouterMode.Single,
              err => {
                if (err) {
                  console.log(`路由失败,errCode:${err.code} errMsg: ${err.message}`)
                }
              }
            )
          })

        Button("室外灯光系统")
          .btn_style()
          .onClick(() => {
            router.pushUrl({
              url: 'pages/LightPage'
            },
              router.RouterMode.Single,
              err => {
                if (err) {
                  console.log(`路由失败,errCode:${err.code} errMsg: ${err.message}`)
                }
              }
            )
          })
      }
      .width('95%')
      .height(100)
      .justifyContent(FlexAlign.Center)

      Row({ space: 40 }) {
        Button("机房控温系统")
          .btn_style()
          .onClick(() => {
            router.pushUrl({
              url: 'pages/TemperaturePage'
            },
              router.RouterMode.Single,
              err => {
                if (err) {
                  console.log(`路由失败,errCode:${err.code} errMsg: ${err.message}`)
                }
              }
            )
          })

        Button("小区门禁系统")
          .btn_style()
          .onClick(() => {
            router.pushUrl({
              url: 'pages/AccessPage'
            },
              router.RouterMode.Single,
              err => {
                if (err) {
                  console.log(`路由失败,errCode:${err.code} errMsg: ${err.message}`)
                }
              }
            )
          })
      }
      .width('95%')
      .height(100)
      .justifyContent(FlexAlign.Center)

    }
    .width("100%")
    .height("100%")
  }
}