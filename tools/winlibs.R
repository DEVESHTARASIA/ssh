# Build against static libraries from rwinlib
if(!file.exists("../windows/libssh-0.8.3/include/libssh/libssh.h")){
  if(getRversion() < "3.3.0") setInternet2()
  download.file("https://github.com/rwinlib/libssh/archive/v0.8.3.zip", "lib.zip", quiet = TRUE)
  dir.create("../windows", showWarnings = FALSE)
  unzip("lib.zip", exdir = "../windows")
  unlink("lib.zip")
}
