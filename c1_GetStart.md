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

## Special Characteristic of Erlang

Erlang is fairly special compare to main stream programming languages like C/C++/Java/Python.

Erlang is also fairly different with Scala which is a new functional programming language.

* Don't provide some tradition imperative constructions : like if, loop is not provided in Erlang.
  Even there is if keyword, provide with similar function.
* Philosophy of handle error is different : Let is crash philosophy is fairly special.
  There are some similarities with Scala's Reactive programming philosophy
  which is handle positive case a failed case in different path.
* Everything is immutable: Most stuff in imperative languages are mutable
  with some exception like str/tuple in python; String in Java.
  Scala provide both immutable and mutable with compromization.
* Message as main way to interact with different modules:
  Akka is implement very similar functions which could be used by JVM languages.