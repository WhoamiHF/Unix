#!/bin/sh

cat /etc/group | awk -e '

BEGIN { FS = ","
        Max=0
        Count=0}

{   if(NF > Max) {
      Max=NF
      Count =1
      a[Count] = $0
      }
    if(Max == NF) {
    Count++
    a[Count]=$0}
}


END { for(i=1;i<=Count;i++)
        print a[i]
        }'| cut -d: -f1