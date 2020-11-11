ex=0
while [ $ex -eq 0 ]
do
dialog --title "List" --menu "Select item:" 0 0 5 \
Create_New_User  "first name, last name, phone number, e-mail" \
Search_User_By_Name "by name" \
Users_List "All Person List" \
Delete_User "Delete By ID" \
Exit "Close Menu" 2>zmoness.txt
kint=$?
zms=$(cat zmoness.txt)
case $kint in
0) case $zms in
Create_New_User) dialog --inputbox \
"Enter name, image, phone number, email" 0 0 2>vardas.txt
vpte=$?
case $vpte in
0) if [ -s vardas.txt ]
then
cat vardas.txt >>telk.txt
echo "" >>telk.txt
fi;;
1);;
255);;
esac
;;
Search_User_By_Name) dialog --inputbox "Enter the name of the person you are looking for:" 0 0 2>iesk.txt
isk=$?
case $isk in
0) vard=$(cat iesk.txt)
grep "$vard" telk.txt > irasas.txt
if [ -s irasas.txt ]
then
dialog --msgbox "Post Found: $(cat irasas.txt)" 15 20
else
dialog --msgbox "Error" 5 20
fi;;
1);;
255) ;;
esac;;
Users_List)
if [ -s telk.txt ]
then
 dialog --msgbox "Contacts List: $(cat -n telk.txt)" 100 100
else
dialog --msgbox "Error" 0 0
fi;;
   Delete_User)
 if [ -s telk.txt ]
then
dialog --inputbox "Enter the serial number of the contact to delete it : " 0 0 2>salin.txt
sal=$?
case $sal in
0) sali=$(cat salin.txt)
if [ -s salin.txt ]
then
dialog --yesno \
"Are you sure you want to delete $(head -n "$sali" telk.txt | tail -n 1) ?" 0 0
salin=$?
case $salin in
0)sed -i "$sali"'d' telk.txt;;
1);;
255);;
esac
else
dialog --msgbox "Please enter something " 0 0
fi;;
1);;
255);;
esac
else
dialog --msgbox "List Empty" 0 0
fi;;
Exit) ex=$(expr $ex + 1) ;;
esac;;
1)exit;;
255)exit;;
esac

rm -f salin.txt
rm -f vardas.txt
rm -f iesk.txt
rm -f irasas.txt
rm -f zmoness.txt
done
