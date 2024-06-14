import router from '@ohos.router';

@Component
export struct Header {
  private title: ResourceStr
  @State params: any = router.getParams()

  build() {
    Row() {
      Image($r('app.media.back'))
        .width(30)
        .onClick(() => {
          router.showAlertBeforeBackPage({
            message: "return?,yes or no ?"
          })
          router.back()
        })
      if (this.title) {
        Text(this.title)
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      Blank()
      Image($r('app.media.shuaxin'))
        .width(30)
    }
    .width('100%')
    .height(30)
  }
}