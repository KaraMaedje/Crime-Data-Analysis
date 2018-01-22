#!/usr/bin/perl
#
#   Packages and modules
#
use strict;
use warnings;
use version;   our $VERSION = qv('5.16.0');   # This is the version of Perl to be used
use Text::CSV  1.32;   # We will be using the CSV module (version 1.32 or higher)
                       # to parse each line


our $answer1 = 0;
my $answer2 = 0;
my $answer3 = 0;
my $answer4 = 0;
my $answer5 = 0;
my $searchCity;
my $display = 0;
my $topNum = 0;

print "Welcome to the Canadian Statistics Query Engine\n";
print "Description....\n";
print "Available Options - Please select the number of your choice.\n";
print "1. GENERAL INQUIRIES\n2. TOP LISTS\n3. TRENDS\n4. MORE INFO\n5. QUIT\n";

$answer1 = <>;
print "\n";
#print "You selected choice $answer1"; 

while ($answer1 != 5) {
	
	#GENERAL INQUIRIES
	if ($answer1 == 1) {
		print "1. Total Crimes\n2. Total Cities\n3. Years Covered\n4. Search for a city\n5. Back\n";
		$answer2 = <>;
		
		while ($answer2 != 5) {  
			
			if ($answer2 == 1){
				print "results NA\n";
			}
			if ($answer2 == 2){
				print "results NA\n";
			}
			if ($answer2 == 3){
				print "results NA\n";
			}
			if ($answer2 == 4){
				print "Enter City:\n";
				$searchCity = <>;
				#check if city is in data
			}
			
			print "1. Total Crimes\n2. Total Cities\n3. Years Covered\n4. Search for a city\n5. Back\n";
		    $answer2 = <>;
		}
	}

	
	#TOP LISTS
	if ($answer1 == 2) {
		print "1. Top Crime Cities\n2. Top Crime Types\n3. Safest Crime Cities\n4. Back\n";
		$answer3 = <>;
		
		while ($answer3 != 4) {
			
			#TOP CRIME CITIES
			if ($answer3 == 1){
				print "1. Top 5\n2. Top 10\n3. Top 25\n4. Top 50\n5. Top 100\n";
				$topNum = <>;
				
				if ($topNum == 1) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 2) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 3) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 4) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 5) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				last;
			}
			
			#TOP CRIME TYPES
			if ($answer3 == 2){
				print "1. Top 5\n2. Top 10\n3. Top 25\n4. Top 50\n5. Top 100\n";
				$topNum = <>;
				
				if ($topNum == 1) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 2) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 3) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 4) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 5) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				last;
			}
			
			#SAFEST CRIME CITIES
			if ($answer3 == 3){
				print "1. Top 5\n2. Top 10\n3. Top 25\n4. Top 50\n5. Top 100\n";
				$topNum = <>;
				
				if ($topNum == 1) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 2) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 3) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 4) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				if ($topNum == 5) {
					print "1. Graphical\n2. Non-Graphical\n";
					$display = <>;
					
					if ($display == 1){
						print "Graphical\n";
					}
					if ($display == 2){
						print "Non-Graphical\n";
					}
				}
				last;
			}
		}
		
	}
	
	#TRENDS
	if ($answer1 == 3) {
		print "1. Changes in Crime Over Time\n";
		print "not available\n";
	}
	
	#MORE INFO
	if ($answer1 == 4) {
		print "Not available.\n";
	}
	
	print "\n----------------------------------------------------------\n";
	print "1. GENERAL INQUIRIES\n2. TOP LISTS\n3. TRENDS\n4. MORE INFO\n5. QUIT\n";
	$answer1 = <>;
	print "\n";
}
print "Bye!\n";


