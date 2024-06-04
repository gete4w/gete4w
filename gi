
// 被观察者 学生
class Subject {
  constructor() {
    this.state = "happy";
    this.observers = []; // 存储所有的观察者
  }
  //新增观察者
  add(o) {
    this.observers.push(o);
  }
  //获取状态
  getState() {
    return this.state;
  }
  // 更新状态并通知
  setState(newState) {
    this.state = newState;
    this.notify();
  }
  //通知所有的观察者
  notify() {
    this.observers.forEach((o) => o.update(this));
  }
}
 
// 观察者 父母和老师
class Observer {
  constructor(name) {
    this.name = name;
  }
  //更新
  update(student) {
    console.log(`亲爱的${this.name} 通知您当前学生的状态是${student.getState()}`);
  }
}
 
let student = new Subject();
let parent = new Observer("父母");
let teacher = new Observer("老师");
//添加观察者
student.add(parent);
student.add(teacher);
//设置被观察者的状态
student.setState("sad");
