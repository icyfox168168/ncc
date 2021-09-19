##############################################################################
#
#					          ncc, the new c/c++ compiler
#
#                   Copyright (c) 2021 Charles E. Youse (charles@gnuless.org).
#                      All rights reserved. See LICENSE file for more details.
#
##############################################################################

all:	cpp/cpp

clean:
	rm -f cpp/*.o cpp/cpp

##############################################################################

CPP_HDRS=	cpp/cpp.h cpp/directive.h cpp/evaluate.h cpp/input.h \
		cpp/macro.h cpp/token.h cpp/vstring.h

CPP_OBJS=	cpp/cpp.o cpp/directive.o cpp/evaluate.o cpp/input.o \
		cpp/macro.o cpp/token.o cpp/vstring.o

cpp/cpp.o: 		cpp/cpp.c $(CPP_HDRS)
cpp/directive.o:	cpp/directive.c $(CPP_HDRS)
cpp/evaluate.o:		cpp/evaluate.c $(CPP_HDRS)
cpp/input.o:		cpp/input.c $(CPP_HDRS)
cpp/macro.o:		cpp/macro.c $(CPP_HDRS)
cpp/token.o:		cpp/token.c $(CPP_HDRS)
cpp/vstring.o:		cpp/vstring.c $(CPP_HDRS)

cpp/cpp: $(CPP_OBJS)
	$(CC) $(CFLAGS) -o cpp/cpp $(CPP_OBJS)

##############################################################################
