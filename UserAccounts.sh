#!/bin/bash

#This is an introduction to the script which inputs the /etc/passwd account info and then the awk command
# process BEGIN then sets the format for the contents.  In this case it is a table.
# The table headings are provided in the first line of print.  The second line is formatting - providing a line accross the top of the table
# The next command is a filter which directs only print output from lines which end with h.  In this case it is the 2 x user accounts
# which end in h for /bin/bash.
# The processing command ends with END and the final print is for the bottom line of the table.
# The /etc/passwd is the input feed which in this case contains the User Accounts.
echo
echo
 echo "This is a table containing User Account  contents from the /etc/passwd file:"
 echo
  awk 'BEGIN { 
     FS=":"; 
        print "| \033[34mUsersname\033[0m            | \033[34mUserID\033[0m     | \033[34mGroupID\033[0m  | \033[34mHome\033[0m                       | \033[34mShell\033[0m"; 
        print "|______________________|____________|__________|____________________________|____________________|";
     } 
    
      /h$.*/ { 
         printf("| \033[33m%-20s\033[0m | \033[35m%-10s\033[0m | \033[35m%-8s\033[0m | \033[35m%-26s\033[0m | \033[35m%-18s\033[0m |\n", $1, $3, $4, $6, $7); 
         } 
      END { 
         print("__________________________________________________________________________________________________"); 
         }' /etc/passwd
   echo
   echo # The top and bottom echo lines are purely to provde space on the output page so that the table can be presented better.


   