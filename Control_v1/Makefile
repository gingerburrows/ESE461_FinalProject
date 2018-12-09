src = control.v top.v Activate_Func.v rom.v Top_tb.v sram.v mac.v

vcs_flag = -full64 -PP +lint=all,noVCDE +v2k -timescale=1ns/10ps

all: simv

simv: $(src)
	vcs $(vcs_flag) $^

run: simv
	./simv +verbose=1

.PHONY: clean
clean : 
	rm -rf csrc
	rm -f simv
	rm -rf simv.daidir
	rm -f *.vcd
	rm -f ucli.key
