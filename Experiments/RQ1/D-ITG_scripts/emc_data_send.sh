DIR="~/PATH"
LOG="LOG"
TRAFFIC="exp/traffic_data"

# Data traffic
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.3 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.9 -rp 10004 -C 3650 -c 1250 -T TCP -l '$LOG'" &'
