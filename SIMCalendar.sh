#!/bin/sh

url=https://studentcal.simge.edu.sg/SIMCalendar/"$1".ics
filename=$(basename $url)
IFS=$(printf '\n.')
IFS=${IFS%.}
test -f "$filename" && rm "$filename"

for i in $(wget -qO- $url | sed 's/;TZID="Singapore Standard Time"//g; 6,16d'); do
if printf %s "$i" | grep -Eq 'DT(START|END)'; then
printf "%s%s%s\n" \
  "$(printf %s "$i" | grep -Eo 'DT(START|END):.{9}')" \
  "$(printf %s "$i" | grep -Eo '.{6}Z' | cut -c1-2 | awk '{printf "%02i", $1 - 8}')" \
  "$(printf %s "$i" | grep -Eo '.{6}Z' | cut -c3-7)" \
  >>"$filename"
else
printf %s\\n "$i" >>"$filename"
fi
done

printf \\n >> "$filename"
sed -i 's/\r//g' "$filename"

if test "$changename" = true; then
for i in $(grep "SUMMARY:" "$filename" | sort -u | awk -F: '{print $2}'); do
printf %s "$i: " && read -r changename
sed -i "s/$i/$changename/g" "$filename"
done
fi

unset url filename changename i
