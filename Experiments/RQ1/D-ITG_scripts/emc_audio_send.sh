DIR="~/PATH"
LOG="LOG"
TRAFFIC="exp/traffic_audio"

# Audio traffic from IoC
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.2 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.8 -rp 10002 -l '$LOG'_from_IoC1_1 VoIP -x G.711.2" &'

bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.2 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.8 -rp 10002 -l '$LOG'_from_IoC1_2 VoIP -x G.711.2" &'

bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.2 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.8 -rp 10002 -l '$LOG'_from_IoC1_3 VoIP -x G.711.2" &'

bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.2 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.8 -rp 10002 -l '$LOG'_from_IoC1_4 VoIP -x G.711.2" &'


# Audio traffic to IoC
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.8 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -a 10.0.0.2 -rp 10002 -t 60000 -l '$LOG'_to_IoC1_1 VoIP -x G.711.2" &'

bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.8 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -a 10.0.0.2 -rp 10002 -t 60000 -l '$LOG'_to_IoC1_2 VoIP -x G.711.2" &'

bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.8 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -a 10.0.0.2 -rp 10002 -t 60000 -l '$LOG'_to_IoC1_3 VoIP -x G.711.2" &'

bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.8 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -a 10.0.0.2 -rp 10002 -t 60000 -l '$LOG'_to_IoC1_4 VoIP -x G.711.2" &'
