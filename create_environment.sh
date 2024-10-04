#!/bin/bash

#creates directory and the sub-directories
mkdir -p  submission_reminder_app/{app,modules,assets,config}

#goes inside the directory
cd submission_reminder_app

#changes the format of the format of the files from windows to unix format and reads from it and also make the files created executable
dos2unix /mnt/c/Users/LENOVO/Downloads/reminder.sh
cat /mnt/c/Users/LENOVO/Downloads/reminder.sh > app/reminder.sh && chmod u+x app/reminder.sh
dos2unix /mnt/c/Users/LENOVO/Downloads/config.env
cat /mnt/c/Users/LENOVO/Downloads/config.env > config/config.env && chmod u+x config/config.env
dos2unix /mnt/c/Users/LENOVO/Downloads/functions.sh
cat /mnt/c/Users/LENOVO/Downloads/functions.sh > modules/functions.sh && chmod u+x modules/functions.sh
cat ../submissions.txt >> assets/submissions.txt

#adding extra 5 names
echo 'Taps, Shell Navigation, submitted
Gift, Shell Navigation, not submitted
Mars, Shell Navigation, submitted
Jagger, Shell Navigation, not submitted
Jax, Shell Navigation, submitted
' >> assets/submissions.txt

#startup.sh script
echo '
#!/bin/bash

chmod u+x app/reminder.sh
./app/reminder.sh
' >> startup.sh && chmod u+x startup.sh
