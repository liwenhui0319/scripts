#!/usr/bin/python3
a=int(input("请输入第一个数："))
b=int(input("请输入第二个数："))
s=input("请输入计算方式(+ - * /)：")
result=0
msg=1
if s == "+":
    result=a+b
elif s == "-":
    result=a+b
elif s == "*":
    result=a*b
elif:
    result=a/b
else:
    print("没有这个计算方式")
    msg=0
if msg ==1:
    print("计算结果是:",result)
