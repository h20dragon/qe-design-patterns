#!/usr/bin/env python
#
import argparse
import glob
import re
import sys
from junitparser import JUnitXml

parser = argparse.ArgumentParser(description='QE Surefire XML report utility.')
parser.add_argument('-d','--dir', help='Directory containing surefire XML files',required=False)
parser.add_argument("--errors", action="store_true", help="Errors")
parser.add_argument("--failures", action="store_true", help="Failures")
parser.add_argument("--skipped", action="store_true", help="Skipped")
parser.add_argument("--tests", action="store_true", help="Tests")
parser.add_argument("--time", action="store_true", help="Time")

parser.add_argument("--update", action="store_true", help="Update")
parser.add_argument("--name", type=str, help="TestSuite name")


parser.add_argument('--file', help='Directory containing surefire XML files',required=True)
parser.add_argument('-v','--verbose', action='count')
parser.add_argument('--vvv', action='count')

parser.add_argument('-o','--output',help='Output file name', required=False)
args = parser.parse_args()

xml_list = []
testcases = {}


if args.file and args.update and args.name:
    print("Update %s name to %s" % (args.file, args.name))
    testSuites = JUnitXml.fromfile(args.file) 
    testSuites.name=args.name
    testSuites.write()
    sys.exit(0)
elif args.file:
    xml_list.append(args.file)
else:
    xmlFolder=args.dir + "/*.xml"

    for file in glob.glob(xmlFolder):
        if args.verbose:
           print ("append(", file, ")")

        xml_list.append(file)


results={ 'failures': 0, 'errors': 0, 'tests': 0, 'skipped': 0, 'time': 0 }


for file in xml_list:
   testSuites = JUnitXml.fromfile(file) 

   results['errors']+=testSuites.errors
   results['failures']+=testSuites.failures

   if hasattr(testSuites, 'skipped'):
       results['skipped']+=testSuites.skipped

   results['tests']+=testSuites.tests
   results['time']+=testSuites.time

   if args.verbose:
       print("== file: %s ==" % file)
       print("[testSuites]: %s" % dir(testSuites))
       print(" o name    : %s" % testSuites.name)
       print(" o tests   : %s" % testSuites.tests)
       print(" o failures: %s" % testSuites.failures)
       print(" o errors  : %s" % testSuites.errors)

       if hasattr(testSuites, 'skipped'):
           print(" o skipped : %s" % testSuites.skipped)

       print(" o time    : %s" % testSuites.time)


   if args.vvv:
       for ts in testSuites:

          if args.verbose:
              #print("tag => %s" % dir(ts))
              print("[tag   : %s]" % ts._tag)
              print("Name  : %s" % ts.name)
              print("child : %s" % ts.child)
              print("child : %s" % dir(ts.child))
              print("Result: %s" % ts.result)

          if ts.result is not None:
              print("=> TestSuite: " % ts.name)
              print("| o Result   : %s" % ts.result)
              print("| o failures : %s" % ts.failures)
              print("| o tests    : %s" % ts.tests)
              print("| o status   : %s" % test_status)

if args.errors:
    print("errors: %s" % results['errors'])

if args.failures:
    print("failures: %s" % results['failures'])

if args.skipped:
    print("skipped: %s" % results['skipped'])
   
if args.tests:
    print("tests: %s" % results['tests'])

if args.time:
    print("time: %s" % results['time'])

rc=0
if results['failures'] > 0 or results['errors'] > 0:
    rc=1

sys.exit(rc)

