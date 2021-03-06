#! /usr/bin/python
# vim:ft=python:foldmethod=marker

import os
import os.path
import shutil
import sys

FILENAME_LIST = [
  '.bash_profile', '.bashrc', '.screenrc', '.vimrc', '.pythonrc', '.template',
  '.tmux.conf', 'bin/vitpl', 'bin/sp', 'bin/tp']

def main(argv):
  config_dir = os.path.abspath(os.path.dirname(argv[0]) or '.') + '/'
  home_dir = os.path.expanduser('~/')
  print 'config directory: ' + config_dir
  print 'home directory: ' + home_dir
  for fn in FILENAME_LIST:
    config_path = config_dir + fn
    home_path = home_dir + fn

    try:
      os.makedirs(os.path.dirname(home_path))
    except:
      pass
    else:
      print 'Make directory: ' + os.path.dirname(home_path)

    if os.path.exists(home_path):
      print 'Delete ' + home_path
      if os.path.isdir(home_path) and not os.path.islink(home_path):
        shutil.rmtree(home_path)
      else:
        os.unlink(home_path)

    print 'Add symlink: %s -> %s' % (config_path, home_path)
    os.symlink(config_path, home_path)
    

if __name__ == "__main__":
  main(sys.argv)
