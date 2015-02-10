#! /usr/bin/python
# vim:ft=python:foldmethod=marker

import os
import os.path
import shutil
import sys

FILENAME_LIST = [
  '.bash_profile', '.bashrc', '.screenrc', '.vimrc', '.pythonrc', '.template',
  'bin/vitpl', 'bin/sp', '.tmux.conf']

def main(argv):
  config_dir = os.path.abspath(os.path.dirname(argv[0]) or '.') + '/'
  home_dir = os.path.expanduser('~/')
  print 'config directory: ' + config_dir
  print 'home directory: ' + home_dir
  for fn in FILENAME_LIST:
    config_fn = config_dir + fn
    home_fn = home_dir + fn
    if os.path.exists(home_fn):
      if os.path.isdir(home_fn) and not os.path.islink(home_fn):
        shutil.rmtree(home_fn)
      else:
        os.unlink(home_fn)
      print 'Delete ' + home_fn
    print 'Add symlink: %s -> %s' % (config_fn, home_fn)
    os.symlink(config_fn, home_fn)
    

if __name__ == "__main__":
  main(sys.argv)
