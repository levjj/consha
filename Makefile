default: clean while.exe

clean:
	rm -f *.dll *.mdb *.exe while.cs

while.exe: while.dfy ReadFileNative.cs
	dafny while.dfy ReadFileNative.cs

test: while.exe
	mono while.exe ex1.whl
