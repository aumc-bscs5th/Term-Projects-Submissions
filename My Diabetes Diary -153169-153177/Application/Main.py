import sys
from os import path
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtGui import QGuiApplication


app = QGuiApplication (sys.argv)
engine = QQmlApplicationEngine()
print(path.abspath(path.join(path.dirname(__file__), 'main.qml')))
engine.load("main.qml")

print(path.abspath(path.join(path.dirname(__file__), 'main.qml')))
app.exec()
sys.exit()