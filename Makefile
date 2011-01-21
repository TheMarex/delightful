# Generate README.tx

MDWN_FILES		= README.mdwn
SUBMODULES		= $(PWD)/submodules
MDWN2TEXT_MK	= $(SUBMODULES)/mdwn2text/mdwn2text.mk

all: update-readme

include $(MDWN2TEXT_MK)

update-readme: README.txt
	git add README.txt
	git commit -m'Updated README.txt from README.mdwn' README.txt || true

clean:
	rm -rf README.txt

.PHONY: all update-readme clean
