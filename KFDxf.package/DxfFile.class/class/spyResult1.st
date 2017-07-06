note
spyResult1
^ '
 - 109188 tallies, 109368 msec.

**Tree**
--------------------------------
Process: (40s) Morphic UI Process: nil
--------------------------------
99.7% {109019ms} DxfContainer>>splitSections
  99.6% {108965ms} DxfContainer>>dataGroups
    99.6% {108965ms} DxfContainer>>lookupDataGroups
      99.2% {108521ms} DxfContainer>>lines
        99.2% {108521ms} DxfContainer>>lookupLines
          98.8% {108050ms} MultiByteFileStream(PositionableStream)>>nextLine
            98.4% {107603ms} MultiByteFileStream>>upToAnyOf:do:
              96.9% {106012ms} WriteStream>>nextPut:
                96.9% {105963ms} WideString(ByteString)>>at:put:
                  95.1% {104011ms} WideString>>at:put:
                  1.8% {1919ms} WideString class>>from:
                    1.7% {1898ms} primitives

**Leaves**
95.1% {104024ms} WideString>>at:put:
1.7% {1898ms} WideString class>>from:

**Memory**
	old			+7,593,540 bytes
	young		+3,149,504 bytes
	used		+10,743,044 bytes
	free		-1,899,604 bytes

**GCs**
	full			1 totalling 340ms (0.0% uptime), avg 340.0ms
	incr		243 totalling 745ms (1.0% uptime), avg 3.0ms
	tenures		233 (avg 1 GCs/tenure)
	root table	0 overflows
'