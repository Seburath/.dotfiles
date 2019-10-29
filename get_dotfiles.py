import os
from shutil import copyfile

username = os.getcwd().split('/')[2]
path = '/home/{}/'.format(username)

copyfile(path + '.zshrc', 'zshrc')
copyfile(path + '.vimrc', 'vimrc')
