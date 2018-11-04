#!/bin/bash
echo Searching for the time frame of $Start_Time to $End_Time on $Date for the Component $Component1 $Component2 $Component3
echo $Select_Component
echo ${1:Select_Component}
arg1=$Component1
arg2=$Component2
arg3=$Component3

if [ $arg1 == Router_logs ]
then
   bash /home/c5276345/router.sh
else
   echo "Might not have checked Router_logs option or the log for $Date is unavailable"
fi
if [ $arg2 == MP_logs ]
then
   bash /home/c5276345/mp.sh
else
   echo "Might not have checked MP_logs option or the log for $Date is unavailable"
fi
if [ $arg3 == Nginx_logs ]
then
   bash /home/c5276345/nginx.sh
else
   echo "Might not have checked Nginx_logs option or the log for $Date is unavailable"
fi


if [ $Component_1 == Router_logs ]
then
   echo "===================================================================================================="
   sed -n "/$Date $Start_Time/ , /$Date $End_Time/p" router.$Date.system.log
   echo "===================================================================================================="
   sed -n "/$Date $Start_Time/ , /$Date $End_Time/p" router.$Date.access.log
   echo "===================================================================================================="
else
   echo "You did not requested the job for this component:$Component1"
fi

if [ $Component_2 == MP_logs ]
then
   echo "===================================================================================================="
   sed -n "/$Date $Start_Time/ , /$Date $End_Time/p" MP.$Date.system.log
   echo "===================================================================================================="
   sed -n "/$Date $Start_Time/ , /$Date $End_Time/p" MP.$Date.access.log
   echo "===================================================================================================="
else
   echo "You did not requested the job for this component:$Component2"
fi

if [ $Component_3 == Nginx_logs ]
then
   echo "===================================================================================================="
   sed -n "/$Date $Start_Time/ , /$Date $End_Time/p" nginx.$Date.error.log
   echo "===================================================================================================="
   sed -n "/$Date $Start_Time/ , /$Date $End_Time/p" nginx.$Date.access.log
   echo "===================================================================================================="
else
   echo "You did not requested the job for this component:$Component3"
fi

if [ $# == null ]
then
   echo "Your command should contain 2 arguments"
   exit 1
fi

