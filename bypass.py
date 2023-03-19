import pyautogui as pg
import time

def wait():
    time.sleep(2.5)

wait()

pg.press(['shift', 'f10'])

wait()       

pg.write('OOBE\\BYPASSNRO', interval=0.15)

wait()

pg.press('enter')

