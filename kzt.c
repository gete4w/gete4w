	//一.设置控制台以及光标
	
	//设置控制台窗口的大小
	system("mode con cols=100 lines=30");
	//设置控制台窗口的名字
	system("title 贪吃蛇");
	//获得标准输出设备的句柄
	HANDLE houtput = NULL;
	houtput = GetStdHandle(STD_OUTPUT_HANDLE);
	//定义一个光标信息的结构体
	CONSOLE_CURSOR_INFO cursor_info = { 0 };
	//获取和houput句柄相关的控制台上的光标的信息，存放在cursor_info中
	GetConsoleCursorInfo(houtput, &cursor_info);
	//修改光标信息
	cursor_info.bVisible = false;//可见度
	//设置和houtput句柄相关的控制台上的光标的信息
	SetConsoleCursorInfo(houtput, &cursor_info);
