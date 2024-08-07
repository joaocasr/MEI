from pynput import keyboard,mouse
import datetime
import threading
from Adafruit_IO import Client,Data

path="C:\\Users\\joaop\\Documents\\GitHub\\MEI\\1st-year\\2sem\\SI\\SA-TP\\aula2\\log.txt"

def on_press(key):
    with open(path,"a") as f:
        try:
            print(key)
            #f.write("new\n")
            f.write(str(datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S"))+'|KeyPressed|'+str(key)+'\n')
        except:
            print("special key - END")
            f.close()

def on_release(key):
    if key== keyboard.Key.esc:
        global stop_threads
        stop_threads=True
        return False

def on_move(x,y):
    with open(path,"a") as f:
        print('MOVE ({0},{1})'.format(x, y))
        f.write(str(datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S"))+'|MouseMovement|'+str((x,y))+'\n')

def on_scroll(x, y, dx, dy):
    with open(path,"a") as f:
        print('SCROLL ({0}, {1})({2}, {3})'.format(x, y, dx, dy))
        f.write(str(datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S"))+"|MouseScroll|"+str((x, y, dx, dy))+'\n')
 
def on_click(x,y,button,pressed):
        with open(path,"a") as f:
            if(pressed):
                    print('CLICK({0}, {1}) with {2}'.format(x, y, str(button)))
                    f.write(str(datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S"))+"|MouseClicked|"+str(button)+'\n')
                    if button == mouse.Button.middle:
                        print('special click - END')
                        f.close()
                        return False 

def keyboard_listening():
    with keyboard.Listener(on_press=on_press,on_release=on_release) as l:
        l.join()

def mouse_listening():
    with mouse.Listener(on_move=on_move,on_click=on_click,on_scroll=on_scroll) as l:
        l.join()

t1 = threading.Thread(target=keyboard_listening)
t2 = threading.Thread(target=mouse_listening)
t1.start()
t2.start()

t1.join()
t2.join()

jsonarray = []
with open(path,"r") as f:
    lines = f.readlines()
    for l in lines:
        parts = l.split("|")
        jsonarray.append({
            "date":parts[0],
            "event":parts[1],
            "detail":parts[2]
        })

ADAFRUIT_AIO_USERNAME = "khonsupx"
ADAFRUIT_AIO_KEY = "aio_gzrw42VquyWfJkpWDq1tnKy8j9dn"
aio = Client(ADAFRUIT_AIO_USERNAME, ADAFRUIT_AIO_KEY)

#filter x coord from mouse movement

import ast
xcoord = []
for j in jsonarray:
    if(j["event"]=="MouseMovement"):
        tuple = ast.literal_eval(j["detail"])
        xcoord.append((tuple[0],j["date"]))

feed = aio.feeds('sensorfeed')
jsonarray = [10,11,12]
data_list = [Data(value=val,created_at=str(datetime.datetime.strptime(date, '%Y/%m/%d %H:%M:%S'))) for (val,date) in xcoord]
aio.send_batch_data(feed.key,data_list)

fp = open(path, 'r+')
fp.truncate(0)
fp.close()
 