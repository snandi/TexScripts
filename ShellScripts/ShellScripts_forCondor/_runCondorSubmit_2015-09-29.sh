#!/bin/bash

condor_submit SubmitFiles/submit_Seed10.txt

sleep 300
condor_release 15065

condor_submit SubmitFiles/submit_Seed11.txt

sleep 300
condor_release 15065; condor_release 15066

condor_submit SubmitFiles/submit_Seed12.txt

sleep 300
condor_release 15065; condor_release 15066; condor_release 15067

condor_submit SubmitFiles/submit_Seed13.txt

sleep 300
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068

condor_submit SubmitFiles/submit_Seed14.txt

sleep 300
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068; condor_release 15069

condor_submit SubmitFiles/submit_Seed15.txt

sleep 300
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068; condor_release 15069; condor_release 15070

condor_submit SubmitFiles/submit_Seed16.txt

sleep 300
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068; condor_release 15069; condor_release 15070; condor_release 15071

condor_submit SubmitFiles/submit_Seed17.txt

sleep 300
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068; condor_release 15069; condor_release 15070; condor_release 15071; condor_release 15072

condor_submit SubmitFiles/submit_Seed18.txt

sleep 300
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068; condor_release 15069; condor_release 15070; condor_release 15071; condor_release 15072; condor_release 15073

condor_submit SubmitFiles/submit_Seed19.txt

sleep 120
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068;condor_release 15069;  condor_release 15070; condor_release 15071; condor_release 15072; condor_release 15073; condor_release 15074

sleep 120
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068;condor_release 15069;  condor_release 15070; condor_release 15071; condor_release 15072; condor_release 15073; condor_release 15074

sleep 120
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068;condor_release 15069;  condor_release 15070; condor_release 15071; condor_release 15072; condor_release 15073; condor_release 15074

sleep 120
condor_release 15065; condor_release 15066; condor_release 15067; condor_release 15068;condor_release 15069;  condor_release 15070; condor_release 15071; condor_release 15072; condor_release 15073; condor_release 15074

