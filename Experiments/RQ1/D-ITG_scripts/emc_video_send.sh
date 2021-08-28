DIR="~/PATH"
LOG="LOG"
TRAFFIC="exp/traffic_video"

# Video traffic: from IoC
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.1 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.7 -rp 10003 -E 1000 -e 1250 -T UDP -l '$LOG'_from_IoC1_1" &'


bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.1 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.7 -rp 10003 -E 1000 -e 1250 -T UDP -l '$LOG'_from_IoC1_2" &'

# video traffic: to IoC
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.7 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.1 -rp 10003 -E 1000 -e 1250 -T UDP -l '$LOG'_to_IoC1_1" &'

bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.7 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.1 -rp 10003 -E 1000 -e 1250 -T UDP -l '$LOG'_to_IoC1_2" &'
