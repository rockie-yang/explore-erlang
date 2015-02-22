# Get Started with Erlang

## Download and install
    * download the source zip file from http://www.erlang.org/download.html
    * unzip the file
    * get into the directory
    * ./configure
    * make
    * make install

```shell
curl -O http://www.erlang.org/download/otp_src_17.4.tar.gz
tar xvf otp_src_17.4.tar.gz
cd otp_src_17.4
./configure
make
make install

```

## The Erlang Shell

```shell
erl             # get into the erlang shell

q().            # In erlang, dont foget the last full stop '.'.
                # erlang will not interpreter the expression until see a full stop.

c(module_name)  # compile a module. module_name should not have extension

cd(directory)   # the same with cd command in shell

```