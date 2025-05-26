
import { CJDateItem } from 'cjcalendar'

export class DateTransfer{
  year: string;    // 年
  month: string;   // 月
  day: string;     // 日
  hour: string;    // 时
  minute: string;  // 分
  second: string;  // 秒
  week: string
  lunarDate: string; // 阴历日
//
  constructor() {
    //新历
    const now = new Date();
    this.year = now.getFullYear().toString();
    this.month = (now.getMonth() + 1).toString().padStart(2, '0');
    this.day = now.getDate().toString().padStart(2, '0');
    this.hour = now.getHours().toString().padStart(2, '0');
    this.minute = now.getMinutes().toString().padStart(2, '0');
    this.second = now.getSeconds().toString().padStart(2, '0');

    const weekNames = ['周日', '周一', '周二', '周三', '周四', '周五', '周六'];
    this.week= `${weekNames[now.getDay()]}`

    //农历
    const dateItem = new CJDateItem(now); // 创建一个 CJDateItem 实例，表示当前日期
    const getlunar=dateItem.getSolar()
    this.lunarDate=this.removeYearFromLunar(`${getlunar.getLunar()}`)
    console.log("农历--->"+getlunar.getLunar()+"周几--->"+this.week+"年月日--->"+this.year+'-'+this.month+'-'+this.day+"时分秒--->"+this.hour+'-'+this.minute)
  }

  private  removeYearFromLunar(lunarStr: string): string {
    // 方法1：直接截取"年"之后的内容
    const yearIndex = lunarStr.indexOf('年');
    return yearIndex !== -1 ? lunarStr.slice(yearIndex + 1) : lunarStr;
  }
}
