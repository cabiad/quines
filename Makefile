.PHONY: test
test:
	@echo "Testing __file__ 'cheat' version..."
	@python quine.filecheat.py > q1.out
	@echo "Displaying diff (should be blank, make aborts otherwise):"
	@diff quine.filecheat.py q1.out
	@rm q1.out
	@echo "Testing __file__ 'cheat' version... SUCCESS!"
	@echo "Testing traditional quine..."
	@python quine.py > q2.out
	@echo "Displaying diff (should be blank, make aborts otherwise):"
	@diff quine.py q2.out
	@rm q2.out
	@echo "Testing traditional quine... SUCCESS!"
