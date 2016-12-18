mips32r1-soc-cores
==================

Core description files for mips32r1-soc.
Based on https://github.com/openrisc/orpsoc-cores.


# Preparing

First install fusesoc:

```
$ sudo aptitude install python-pip
$ git clone https://github.com/olofk/fusesoc
$ cd fusesoc
$ sudo pip install -e .
```


# Simulation

First install Icarus Verilog and GtkWave software:

```
$ sudo aptitude install iverilog gtkwave
```

Simulation:

```
$ fusesoc --cores-root cores/ sim marsohod2
$ gtkwave ./build/marsohod2_0/sim-icarus/mips32r1_soc_tb.vcd \
          ./build/marsohod2_0/src/marsohod2_0/data/mips32r1_soc_tb.gtkw
```


# Build

Marsohod2 needs Quartus <= 13.1:

```
$ export PATH=$PATH:/opt/altera/13.1/quartus/bin
$ fusesoc --cores-root cores/ build marsohod2
```

Marsohod3 needs Quartus >= 15.0:

```
$ export PATH=$PATH:/opt/altera/16.0/quartus/bin
$ fusesoc --cores-root cores/ build marsohod3
```
