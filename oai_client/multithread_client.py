from socket import *
from threading import Thread
from random import choice
import json
import time

BUFFER_SIZE = 8192

# 随机发送数据测试的库:
data_list = [
[[221.0, 1350.0, 640.0, 376.26798960315506, 543.0, 21257877.349853516, 
4793407917.022705, 1263437211.5135193, 2039103758.0566826, 119541525.84075928],["1"]], 
[[171.0, 1460.0, 888.4, 514.1558518581695, 853.0, 11920.928955078125, 
17442424058.914185, 4385495722.293854, 7538530505.708111, 49773454.666137695],["2"]],
[[498.0, 1460.0, 1088.8, 455.13356281425786, 1460.0, 36954.87976074219, 
43512821.197509766, 11164724.826812744, 18679961.749486398, 554561.6149902344],["3"]],
[[498.0, 1460.0, 1088.8, 455.13356281425786, 1460.0, 30994.415283203125, 
44764995.57495117, 16246497.631072998, 18385686.144529935, 10095000.267028809],["4"]],
[[566.0, 1460.0, 1281.2, 357.59999999999997, 1460.0, 22172.927856445312, 
21413803.100585938, 5526959.8960876465, 9175244.715715846, 335931.77795410156],["5"]],
[[69.0, 629.0, 246.6, 205.1522361564699, 172.0, 190973.28186035156, 
457492113.1134033, 219977498.0545044, 220039359.48775682, 211113452.91137695],["6"]],
[[69.0, 278.0, 137.8, 78.91108920804477, 85.0, 144958.49609375, 
462785959.2437744, 210317969.3222046, 211827960.3342278, 189170479.7744751],["7"]],
[[302.0, 1460.0, 807.6, 537.1113850962387, 498.0, 12874.603271484375, 
205285072.32666016, 56649982.92922974, 86251862.02980827, 10650992.393493652],["8"]],
[[266.0, 1460.0, 892.8, 490.89730086852177, 780.0, 24080.276489257812, 
301223039.6270752, 76725006.10351562, 129634012.70485088, 2826452.2552490234],["9"]],
[[514.0, 1460.0, 1191.6, 371.89762032043177, 1460.0, 10013.580322265625, 
890016.5557861328, 236511.23046875, 377434.79666208074, 23007.39288330078],["10"]],
"hhh", "exit", "send", "send"]

 
class TcpClient(object):
    """Tcp客户端"""
    def __init__(self, IP="127.0.0.1", Port=5002):
        """初始化对象"""
        self.code_mode = "utf-8"    #收发数据编码/解码格式
        self.IP = IP
        self.Port = Port
        self.my_socket = socket(AF_INET, SOCK_STREAM)   #创建socket
 
    def run(self):
        """启动"""
        self.my_socket.connect((self.IP, self.Port))  #连接服务器
 
        tr = Thread(target=self.recv_data)  #创建线程收数据
        ts = Thread(target=self.send_data)  #创建线程发数据
 
        tr.start()  #开启线程
        ts.start()

 
    def recv_data(self):
        """收数据"""
        while True:
            data = self.my_socket.recv(BUFFER_SIZE).decode(self.code_mode)
            if data:
                if data == "close connecting":
                    print("已下线")
                    break
                else:
                    print("{}".format(data))
            else:
                break
 
        self.my_socket.close()
 
    def send_data(self):
        """发数据"""
        while True:
            # 接收数据
            data = choice(data_list)
            if type(data) == list:
                print("已发送五元组{}的特征".format(data[1][0]))
            else:
                print("发送命令: ", data)
            # 两s发送一次 测试
            time.sleep(2)

            # 判断data的类型 如果是列表用 json传输 字符串就直接传输
            if type(data) == list:
                send_dat = json.dumps(data)
                self.my_socket.sendall(send_dat.encode(self.code_mode))
            elif type(data) == str:
                self.my_socket.sendall(data.encode(self.code_mode))
            else:
                continue
            # 如果是退出 直接推出程序
            if data == "exit":
                break
 
def main():
    # 服务器IP和端口
    ip = "192.168.136.137"
    port = 5005
    my_socket = TcpClient(ip, port)
    my_socket.run() 
 
if __name__ == "__main__":
    main()