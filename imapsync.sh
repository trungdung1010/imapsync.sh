#!/bin/bash
mail1=mail01.zshield.cloud
mail2=mail4.emailservertenten.com
pw=Tenten@123

while read user1 user2; do
    imapsync --buffersize 8192000 \
        --host1 $mail1 --user1 $user1 --password1 $pw --ssl1 --host2 $mail2 --user2 $user2 --password2 $pw --ssl2 --syncinternaldates --useheader "Message-Id"
done < users.txt
