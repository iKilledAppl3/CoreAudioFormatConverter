#!/bin/bash
echo
echo "Core Audio Format Converter. Converts .mp3 files to .caf files for iOS apps and tweaks."
echo
echo Created by J.K Hayslip from this guide
echo
echo https://stackoverflow.com/questions/254080/converting-audio-to-caf-format-for-playback-on-iphone-using-openal
echo
echo Make sure the file is placed on the desktop and is of the .mp3 format.
echo 
read -p "Changing to the directory to the Desktop shall we continue? Y/n?" answer
while true
do
	case $answer in
		[yY]* ) echo ">>Directory changed.. Now converting file."
		cd /users/$USER/Desktop
				break;;
		* )		break;;
	esac
	
done

for f in *.mp3 
do
	echo "Converting $f to .caf Please wait..."
	afconvert -f caff -d LEI16 "$f" "${f/mp3/caf}"
 
done
echo "Done!"
read -p "Want to delete the old mp3 files? WARNING WILL DELETE ALL .MP3 FILES! YOU HAVE BEEN WARNED! Y/n?" answer
while true
do
	case $answer in
		[yY]* ) echo ">>Deleting!... NO ESCAPE!"
		cd /users/$USER/Desktop && rm -rf *.mp3
				break;;
		* )		break;;
	esac
	
done
echo
echo "Done!"
echo
echo "Thanks for using follow me on Twitter @iKilledAppl3"
