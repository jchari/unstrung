UNSTRUNG_SRCDIR?=$(shell cd ../../..; pwd)

include ${UNSTRUNG_SRCDIR}/Makefile.inc
include ${srcdir}../Makefile.testing

export SENDND=${UNSTRUNG_OBJDIR}/programs/sendnd/sendnd

checkprograms::
programs::
clean::
	@rm -f core.*
	@rm -rf OUTPUT

check::
	@rm -f core.*
	./send-nd-test-01.sh
	@if [ -f core.* ]; then echo CORE FILES FOUND; exit 1; else exit 0; fi

update:
	cp ../OUTPUTS/send-nd-test-00.raw      send-nd-test-00.out
	cp ../OUTPUTS/send-nd-test-01.raw      send-nd-test-01.out
	cp ../OUTPUTS/send-nd-test-01-pcap.txt send-nd-test-01-pcap.txt

vars:
	echo ${SENDND}
