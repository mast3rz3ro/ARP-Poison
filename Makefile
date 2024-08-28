












# arp-poison

CC = gcc
LDFLAGS = -lnet -lpcap `libnet-config --defines`


all:
	$(CC) arp-poison.c $(LDFLAGS) -o arp-poison

install: arp-poison
	cp  arp-poison $(PREFIX)/bin/

clean:
	rm arp-poison
