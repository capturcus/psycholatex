#!/usr/bin/python

AND = " and "

def findnext(text, pat, pos):
    return text[pos:].find(pat)+pos

def extractnext(text, pat):
    sep = findnext(text, pat, 0)
    return text[:sep], text[sep+1:]

def przypisize(przyp):
    andd = findnext(przyp, AND, 0)
    comma0 = findnext(przyp, ",", andd)
    comma1 = findnext(przyp, ",", comma0+1)
    _authors_ = przyp[:comma1].replace(AND, ", ")
    rest0 = przyp[comma1+2:]
    dot0 = findnext(rest0, ".", 0)
    _title_ = rest0[:dot0]
    rest1 = rest0[dot0+2:]
    _journal_, rest2 = extractnext(rest1, ",")
    _year_, rest3 = extractnext(rest2[1:], ",")
    _issue_, rest4 = extractnext(rest3[1:], ",")
    _pages_, _ = extractnext(rest4[1:], ".")
    return "\\apaartykul{" + "}{".join([_authors_, _year_, _title_, _journal_, _issue_, _pages_])+"}"
    

f = open("przypisy0.txt")
for line in f:
    if line[:-1] != "":
        print przypisize(line[1:-1])
        print ""