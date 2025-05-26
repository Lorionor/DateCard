import { DateTransfer } from '../../interface/DateTransfer'
@Entry
@Component
@Preview
export struct DateCard {
  private date=new DateTransfer()
  @State week:string=this.date.week
  @State month:string=this.date.month
  @State day:string=this.date.day
  @State lunarDate:string=this.date.lunarDate
  build() {
    Column() {
      // 第一行：周 + 月份
      Row() {
        Text(this.week)
          .fontSize(24)
          .textAlign(TextAlign.Start)
          .fontWeight(FontWeight.Bold)
          .fontColor('rgb(252, 38, 38)')
        Blank()
        Text(this.month)
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .fontColor('rgb(154, 154, 156)')
          .margin({left:'25%'})
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ left: 20, right: 20 })

      // 第二行：日期 + 农历
      Row() {
        Text(this.day)
          .width('85%')
          .fontSize(70)
          .fontColor("$color:date_color")
          .fontWeight(FontWeight.Bold)

        Text(this.lunarDate)
          .fontWeight(FontWeight.Bold)
          .fontSize(20)
          .fontColor("$color:lunarDate")
          .height('100%')
          .width('15%')
      }
      .width('90%')
      .height('90%')
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .width('100%')
    .height('100%')
    .padding(16)
    .backgroundColor("$color:card_backgroundColor")
    .borderRadius(20)  // 可选圆角
    .shadow({          // 可选阴影
      radius: 8,
      color: '#40000000',
      offsetX: 2,
      offsetY: 4
    })
  }
}