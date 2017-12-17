#!/usr/bin/python
# -*- coding: utf-8 -*-

import requests

r = requests.post("http://cermine.ceon.pl/parse.do", data={"reference": "Snoeren EM, Agmo A. Female ultrasonic vocalizations have no incentive value for male rats. Behav Neurosci 2013;127:439–50.", "format": "nlm"})

if r.status_code != 200:
    print r.status_code

print r.text