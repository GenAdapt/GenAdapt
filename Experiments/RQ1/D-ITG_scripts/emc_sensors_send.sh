DIR="~/PATH"
LOG="LOG"
TRAFFIC="exp/traffic_sensor"

# Sensor 1
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.10 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.4 -rp 10001 -C 18 -u 125 1250 -T TCP -l '$LOG'_1" &'

# Sensor 2
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.15 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.4 -rp 10001 -C 18 -u 125 1250 -T TCP -l '$LOG'_2" &'

# Sensor 3
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.20 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.4 -rp 10001 -C 18 -u 125 1250 -T TCP -l '$LOG'_3" &'

# Sensor 4
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.25 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.4 -rp 10001 -C 18 -u 125 1250 -T TCP -l '$LOG'_4" &'

# Sensor 5
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.30 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.4 -rp 10001 -C 18 -u 125 1250 -T TCP -l '$LOG'_5" &'
