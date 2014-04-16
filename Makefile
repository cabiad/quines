QUINE_FILECHEAT_TMPFILE:=$(shell mktemp '/tmp/QUINE_FILECHEAT.out.XXXXXX')
QUINE_TMPFILE:=$(shell mktemp '/tmp/QUINE.out.XXXXXX')

.PHONY: test
test:
	@echo "Save quine output to temp files..."
	@echo "quine.filecheat.py tmpfile: $(QUINE_FILECHEAT_TMPFILE)"
	@python quine.filecheat.py > $(QUINE_FILECHEAT_TMPFILE)
	@echo "quine.py tmpfile: $(QUINE_TMPFILE)"
	@python quine.py > $(QUINE_TMPFILE)
	@echo "Save quine output to temp files...DONE"
	@echo
	@echo "Testing __file__ 'cheat' version..."
	@echo "Displaying diff (should be blank, make aborts otherwise):"
	@diff -u quine.filecheat.py $(QUINE_FILECHEAT_TMPFILE)
	@echo "Testing __file__ 'cheat' version... DONE"
	@echo
	@echo "Testing traditional quine..."
	@echo "Displaying diff (should be blank, make aborts otherwise):"
	@diff -u quine.py $(QUINE_TMPFILE)
	@echo "Testing traditional quine... DONE"
	@echo
	@echo "Clean up tmpfiles..."
	@rm $(QUINE_FILECHEAT_TMPFILE) $(QUINE_TMPFILE)
	@echo "Clean up tmpfiles...DONE"
