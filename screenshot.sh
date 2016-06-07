date=`date +"%m_%d_%y_%H_%M_%S"`
filename=$date.jpg

import -window root $filename 
scp $filename bigname:/home/forge/heybigname.com/public/screens
echo "http://heybigname.com/screens/$filename" | xclip -i
xclip -o | xclip -selection clipboard -i
notify-send "$filename added to clipboard"
