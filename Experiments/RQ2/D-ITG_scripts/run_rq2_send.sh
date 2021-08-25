DIR="~/PATH"
LOG="LOG"

PK_SIZE=1250
PPS=$((3650*5/$1))

echo $PPS

for i in $(eval echo {1..$1})
do

IP="10.0.0.$i"

bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@'$IP' \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 10000 -a 10.0.0.102 -rp 10005 -E '$PPS' -e '$PK_SIZE' -T UDP" &'

done
