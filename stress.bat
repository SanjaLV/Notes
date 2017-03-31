@echo off


:START

Gen > test
Main < test > fast
Slow < test > slow

Checker


goto START