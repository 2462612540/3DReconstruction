#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
@version: 1.0
@author: xjl
@file: unzip2.py
@time: 2021/2/28 14:27
@target :该文件的主要是用于的解压文件夹以及子文件下面的相关的zip 文件包并删除原来的文件zip
"""
import zipfile
import os
import shutil

def unzip_file(path):
    filenames = os.listdir(path)#获取目录下所有文件名
    for filename in filenames:
        filepath = os.path.join(path,filename)
        zip_file = zipfile.ZipFile(filepath) #获取压缩文件
        #print(filename)
        newfilepath = filename.split(".",1)[0] #获取压缩文件的文件名
        newfilepath = os.path.join(path,newfilepath)
        #print(newfilepath)
        if os.path.isdir(newfilepath): # 根据获取的压缩文件的文件名建立相应的文件夹
            pass
        else:
            os.mkdir(newfilepath)
        for name in zip_file.namelist():# 解压文件
            zip_file.extract(name,newfilepath)
        zip_file.close()
        Conf = os.path.join(newfilepath,'conf')
        if os.path.exists(Conf):#如存在配置文件，则删除（需要删则删，不要的话不删）
            shutil.rmtree(Conf)
        if os.path.exists(filepath):#删除原先压缩包
            os.remove(filepath)
        print("解压{0}成功".format(filename))

def GetFile(path):
    filenames = os.listdir(path)  # 获取目录下所有文件名
    for filename in filenames:
        if os.path.isdir(filename): # 如果是文件的话 就继续获取的下一级文件
            GetFile(filename)
        else:
            name=os.path.join(path, filename)
            if os.path.splitext(name)[1] == '.zip':
                unzip_file(name)



if __name__ == '__main__':
    GetFile(r"D:\softwaresavfile\Github\3DReconstruction\matlab的示范代码")
