Quines
======

Simple Python Quines Created Just for Fun

`http://en.wikipedia.org/wiki/Quine_%28computing%29`

I wrote a couple of quines in Python as a part of the Python-on-Rails
2014 code dojo. (`https://us.pycon.org/2014/events/python_on_rails/`)

I'd heard of quines before, but never studied how they were created.
It was fun to figure out the __file__ based "cheat" version and
then figure out the specific tricks required to get the more
"expected" kind of quine going too.

Sample Run
===

    $ make test
    Testing __file__ 'cheat' version...
    Displaying diff (should be blank, make aborts otherwise):
    Testing __file__ 'cheat' version... SUCCESS!
    Testing traditional quine...
    Displaying diff (should be blank, make aborts otherwise):
    Testing traditional quine... SUCCESS!
