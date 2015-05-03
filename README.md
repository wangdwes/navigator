# navigator
A Dstar planner with simple arena settings.

## Installation 
1. Follow 'Building and Installing SBPL from source' at http://sbpl.net/node/54.
2. Issue the following commands, 

  ```
  git clone git@github.com:wangdwes/navigator.git
  cd navigator
  mkdir build
  cd build
  cmake ..
  make
  ```

3. Launch matlab, then navigate to navigator/matlab/ and run make.m.

## Usage
Check out navigator/matlab/example.m and gentraj.m
 
## Note
It seems that sometimes the shared library libsbpl.so cannot be found
when you're trying to instantiate a navigator. In this case, copy 
sbpl/build/libsbpl.so to matlabroot/bin/glnxa64. matlabroot is the
root directory of matlab, which can be retrieved by typing 'matlabroot' 
in the matlab command prompt. 

