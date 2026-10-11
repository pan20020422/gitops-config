ip add
ping www.baidu.com
ip add
nmcli connection show
nmcli con modify ens160 ipv4.addresses 192.168.118.100/24
nmcli con modify ens160 ipv4.gateway 192.168.118.2 ipv4.dns "114.114.114.114 223.5.5.5" ipv4.method manaul connection.autoconnect yes
nmcli con modify ens160 ipv4.gateway 192.168.118.2 ipv4.dns "114.114.114.114 223.5.5.5" ipv4.method manaual connection.autoconnect yes
nmcli con modify ens160 ipv4.gateway 192.168.118.2 ipv4.dns "114.114.114.114 223.5.5.5" ipv4.method manual connection.autoconnect yes
nmcli con ens160 up
nmcli con ip ens160 
nmcli con up ens160 
ip add
reboot
rm -rf ./
rm -rf ./*
ls
cat > demo4.txt <<EOF
name:zhangsan
age:23
sex:man
home:changsha
EOF

ls
sed 's/zhangsan/lisi/' demo4.txt 
cat demo4.txt 
sed 's/zhangsan/lisi/g' demo4.txt 
cat > demo4.txt <<EOF
aa bb aa cc aa
name:aa
EOF

sed -i 's/aa/oo/' demo4.txt 
cat demo4.txt 
sed -i 's/aa/oo/g' demo4.txt 
cat demo4.txt 
sed -i.bak 's/aa/oo/g' demo4.txt 
ls
cat > demo5.txt <<EOF
111
222
333
444
555
EOF

sed '2d' demo5.txt 
cat demo5.txt 
sed '2,4d' demo5.txt 
sed '/333/d' demo5.txt 
sed -i '/333/d' demo5.txt 
cat demo5.txt 
sed '2a 666' demo5.txt 
sed '2i 666' demo5.txt 
sed '222a 666' demo5.txt 
sed '/222/a 666' demo5.txt 
下一节
sed -n '2p' demo5.txt
cat demo5.txt 
sed -n '2p' demo5.txt
sed  '2p' demo5.txt
sed  '1p' demo5.txt
rm -rf ./*
cat > demo6.txt <<EOF
zhangsan 23 male beijing
lisi 25 female shanghai
wangwu 27 male guangzhou
EOF

man awk
awk '{print $1}' demo6.txt 
cat demo6.txt 
awk '{print $0}' demo6.txt 
cat demo6.txt 
awk '{print $3}' demo6.txt 
awk '{print $-1}' demo6.txt 
awk '{print $1,$3}' demo6.txt 
ip ad
ip ad|grep inet
ip ad|grep inet|awk '{print $2}'
man sed 
sed -n '1,2p' demo6.txt 
man awk
head /etc/passwd
awk -F :  '{print $2}'
awk -F :  '{print $2}' /etc/passwd
awk -F :  '{print $1}' /etc/passwd
rm -rf ./*
cat > demo8.txt <<EOF
zhangsan 23 male
lisi 25 female
wangwu 27 male
zhaoliu 21 female
zhouqi 30 male
EOF

awk '$2 > 24' demo8.txt 
awk '$2 > 24{print $1}' demo8.txt 
cat > demo9.txt <<EOF
zhangsan 23 88
lisi 25 92
wangwu 27 79
zhaoliu 21 95
EO
F

cat > demo9.txt <<EOF
zhangsan 23 88
lisi 25 92
wangwu 27 79
zhaoliu 21 95
EOF

AWK 'BEGIN{print "name","age","score"}{print $1,$2,$3}' demo9.txt 
awk 'BEGIN{print "name","age","score"}{print $1,$2,$3}' demo9.txt 
awk 'BEGIN{print "name","age","score"}{print $1,$2,$3}END{print '1234567'}' demo9.txt 
awk 'END{print "总行数:",NR}' demo9.txt
man awk
awk '
BEGIN{sum=0}
{sum = sum + $3}
END{print "总分：",sum}
' demo9.txt
awk '
BEGIN{print "==== name age score ===="}
{print $1,$2,$3}
END{print "一共行数：",NR}
' demo9.txt
awk '{print "第"NR"行，列总数:"NF}' demo9.txt
man awk
history
ls
rm -rf ./*
cat > demo10.txt <<EOF
tom  18  male  86
jack 22  male  77
mary 21  female 91
rose 19  female 83
mike 25  male  59
EOF

ls
grep female demo10.txt 
grep female demo10.txt | awk '{print $3}'
grep female demo10.txt | awk '{print $1,$4}'
grep female demo10.txt | awk '{print $1,$0}'
awk '$3=female{print $1,$0}'
awk '$3=female{print $1,$0}' demo10.txt 
awk '$3=female {print $1,$0}' demo10.txt 
awk '$3="female" {print $1,$4}' demo10.txt 
awk '$3=female {print $1,$4}' demo10.txt 
awk '$3="female"{print $1,$4}' demo10.txt 
cat demo10.txt 
sed 's/male/M/g;s/female/F' demo10.txt 
sed 's/male/M/g;s/female/F/g' demo10.txt 
sed 's/male/M/g;s/female/F/g' demo10.txt |awk '{print $1,3}'
sed 's/male/M/g;s/female/F/g' demo10.txt |awk '{print $1,$3}'
sed 's/male/M/g;s/female/F/g' demo10.txt | awk '{print $1,$3}'
sed 's/\bmale\b/M/g;s/\bfemale\b/F/g' demo10.txt | awk '{print $1,$3}'
cat demo10.txt 
awk '$2>20' demo10.txt 
sed '1d' demo10.txt 
man grep
ls
cat > access.log << 'EOF'
192.168.1.10 - - [10/Oct/2026:13:00:01 +0800] "GET /index.html HTTP/1.1" 200 5120 "-" "Mozilla/5.0 (Windows NT 10.0)"
192.168.1.10 - - [10/Oct/2026:13:00:05 +0800] "GET /static/style.css HTTP/1.1" 200 3200 "-" "Mozilla/5.0 (Windows NT 10.0)"
192.168.1.20 - - [10/Oct/2026:13:00:08 +0800] "GET /api/user HTTP/1.1" 200 1024 "-" "curl/7.68.0"
10.0.0.5 - - [10/Oct/2026:13:00:10 +0800] "POST /login HTTP/1.1" 200 512 "-" "Mozilla/5.0 (Macintosh)"
192.168.1.10 - - [10/Oct/2026:13:00:12 +0800] "GET /favicon.ico HTTP/1.1" 200 1543 "-" "Mozilla/5.0 (Windows NT 10.0)"
172.16.0.8 - - [10/Oct/2026:13:00:15 +0800] "GET /api/order HTTP/1.1" 200 2048 "-" "Mozilla/5.0 (iPhone)"
192.168.1.30 - - [10/Oct/2026:13:00:18 +0800] "GET /index.html HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Android 11)"
10.0.0.6 - - [10/Oct/2026:13:00:20 +0800] "GET /api/user HTTP/1.1" 200 1024 "-" "curl/7.68.0"
192.168.1.10 - - [10/Oct/2026:13:00:23 +0800] "GET /index.html HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0)"
203.0.113.5 - - [10/Oct/2026:13:00:25 +0800] "GET /login HTTP/1.1" 404 0 "-" "Mozilla/5.0"
192.168.1.20 - - [10/Oct/2026:13:00:28 +0800] "GET /api/order HTTP/1.1" 200 2048 "-" "Mozilla/5.0 (Macintosh)"
172.16.0.8 - - [10/Oct/2026:13:00:30 +0800] "POST /api/pay HTTP/1.1" 500 0 "-" "Mozilla/5.0 (iPhone)"
192.168.1.10 - - [10/Oct/2026:13:00:33 +0800] "GET /api/user HTTP/1.1" 200 1024 "-" "curl/7.68.0"
192.168.1.40 - - [10/Oct/2026:13:00:35 +0800] "GET /index.html HTTP/1.1" 200 5120 "-" "Mozilla/5.0 (X11; Linux)"
10.0.0.5 - - [10/Oct/2026:13:00:38 +0800] "GET /favicon.ico HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh)"
192.168.1.20 - - [10/Oct/2026:13:00:40 +0800] "GET /index.html HTTP/1.1" 200 5120 "-" "Mozilla/5.0 (Macintosh)"
172.16.0.9 - - [10/Oct/2026:13:00:43 +0800] "GET /api/user HTTP/1.1" 200 1024 "-" "curl/7.68.0"
10.0.0.6 - - [10/Oct/2026:13:00:45 +0800] "POST /api/pay HTTP/1.1" 500 0 "-" "Mozilla/5.0 (Android 11)"
192.168.1.30 - - [10/Oct/2026:13:00:48 +0800] "GET /static/style.css HTTP/1.1" 200 3200 "-" "Mozilla/5.0 (Android 11)"
192.168.1.10 - - [10/Oct/2026:13:00:50 +0800] "GET /login HTTP/1.1" 200 512 "-" "Mozilla/5.0 (Windows NT 10.0)"
198.51.100.1 - - [10/Oct/2026:13:00:52 +0800] "GET /index.html HTTP/1.1" 200 5120 "-" "Mozilla/5.0"
10.0.0.5 - - [10/Oct/2026:13:00:55 +0800] "GET /api/order HTTP/1.1" 200 2048 "-" "Mozilla/5.0 (Macintosh)"
203.0.113.5 - - [10/Oct/2026:13:00:58 +0800] "GET /favicon.ico HTTP/1.1" 200 1543 "-" "Mozilla/5.0"
192.168.1.20 - - [10/Oct/2026:13:01:00 +0800] "GET /api/user HTTP/1.1" 200 1024 "-" "curl/7.68.0"
172.16.0.8 - - [10/Oct/2026:13:01:02 +0800] "POST /api/pay HTTP/1.1" 500 0 "-" "Mozilla/5.0 (iPhone)"
192.168.1.30 - - [10/Oct/2026:13:01:05 +0800] "GET /api/user HTTP/1.1" 200 1024 "-" "curl/7.68.0"
192.168.1.10 - - [10/Oct/2026:13:01:08 +0800] "GET /index.html HTTP/1.1" 200 5120 "-" "Mozilla/5.0 (Windows NT 10.0)"
10.0.0.6 - - [10/Oct/2026:13:01:10 +0800] "GET /login HTTP/1.1" 200 512 "-" "Mozilla/5.0 (Android 11)"
192.168.1.40 - - [10/Oct/2026:13:01:13 +0800] "GET /api/user HTTP/1.1" 404 0 "-" "curl/7.68.0"
192.168.1.20 - - [10/Oct/2026:13:01:15 +0800] "GET /index.html HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh)"
10.0.0.5 - - [10/Oct/2026:13:01:18 +0800] "GET /index.html HTTP/1.1" 200 5120 "-" "Mozilla/5.0 (Macintosh)"
203.0.113.5 - - [10/Oct/2026:13:01:20 +0800] "POST /api/pay HTTP/1.1" 500 0 "-" "Mozilla/5.0"
172.16.0.9 - - [10/Oct/2026:13:01:23 +0800] "GET /api/order HTTP/1.1" 200 2048 "-" "Mozilla/5.0"
192.168.1.30 - - [10/Oct/2026:13:01:26 +0800] "GET /index.html HTTP/1.1" 200 5120 "-" "Mozilla/5.0 (Android 11)"
198.51.100.1 - - [10/Oct/2026:13:01:28 +0800] "GET /static/style.css HTTP/1.1" 200 3200 "-" "Mozilla/5.0"
192.168.1.10 - - [10/Oct/2026:13:01:30 +0800] "POST /api/pay HTTP/1.1" 500 0 "-" "Mozilla/5.0 (Windows NT 10.0)"
10.0.0.5 - - [10/Oct/2026:13:01:33 +0800] "GET /static/style.css HTTP/1.1" 404 0 "-" "Mozilla/5.0 (Macintosh)"
192.168.1.20 - - [10/Oct/2026:13:01:36 +0800] "GET /index.html HTTP/1.1" 200 5120 "-" "Mozilla/5.0 (Macintosh)"
172.16.0.8 - - [10/Oct/2026:13:01:38 +0800] "GET /api/order HTTP/1.1" 200 2048 "-" "Mozilla/5.0 (iPhone)"
192.168.1.50 - - [10/Oct/2026:13:01:40 +0800] "GET /favicon.ico HTTP/1.1" 200 1543 "-" "Mozilla/5.0"
EOF

ls
head -3 access.log 
awk '{print $1}' access.log 
awk '{print $1}' access.log |sort
awk '{print $1}' access.log |sort|uniq -c
awk '{print $1}' access.log |sort|uniq -c|sort -n
awk '{print $1}' access.log |sort|uniq -c|sort -rn
awk '{print $1}' access.log |sort|uniq -c|sort -rn|head 10
awk '{print $1}' access.log |sort|uniq -c|sort -rn
awk '{print $1}' access.log |sort|uniq -c|sort -rn|head -10
head 10 access.log 
head -10 access.log 
head -n 10 access.log 
awk "{print $8}" access.log 
awk "{print $1}" access.log 
awk '{print $1}' access.log 
head -n 10 ac
head -n 10 access.log 
awk '{print $8}' access.log 
head -n 10 access.log 
awk '{print $9}' access.log 
awk '{print $9}' access.log |sort 
awk '{print $9}' access.log |grep 500|sort 
awk '{print $9}' access.log |grep 500|sort |uniq -c
awk '$9=="500"' access.log
awk '$9=="500"' access.log|wc -l
s
rm -rf ./*
timedatectl set-timezone Asia/Shanghai
q
timedatectl 
date
timedatectl --help
timedatectl status
timedatectl show
timedatectl list
timedatectl list-timezones
timedatectl --help
ls
curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh |   INSTALL_K3S_MIRROR=cn   INSTALL_K3S_EXEC="--disable=traefik --write-kubeconfig-mode 644"   sh -
cat /etc/sudo.conf 
ls /etc/sudoers.d/
ll /etc/sudoers.d/
ll /etc/sudoers
vim /etc/sudoers
ls
mkdir hello
ll
chmod 000 hello/
ll
chmod 611 hello/
ll
useradd wuzixuan
passwd wuzixuan
ll
chown wuzixuan hello/
ll
useradd pld
passwd plf
passwd pld
su pld
cat /etc/sudoers|grep wuzi
su wuzixuan
find / -name "*sudoers*"
vim /etc/sudoers
visudo 
su wuzixuan
ll
chmod 777 .
ll
chmod 777 /root
ll 
pwd
chmod 777 /root
ll /root
ll -d /root
su pld
cat /etc/hosts
man nmcli
nmcli --help
nmcli -help
nmcli help
nmcli -a
nmcli device show
nmcli modify --help
nmcli modify help
vim /etc/hosts
dnf install vim 
which yum
ll /usr/bin/yum
ll /usr/bin/dnf-3
which dnf
ll dnf
which dnf
ll /usr/bin/dnf
ll /usr/bin/dnf-3
cat /usr/bin/dnf-3
:q
man dnf
vim /etc/hosts
dnf install wget vim git -y
swapoff -a
sed -i '/ swap / s/^/#/' /etc/fstab
free -h
ls
vim anaconda-ks.cfg 
cat anaconda-ks.cfg 
ls
cat > test.txt <<EOF
apple 100
banana 200
orange 300
Apple 500
grape 400
APPLE 999
hello world
test line
EOF

rm -rf anaconda-ks.cfg 
ls
grep apple test.txt 
grep -i apple test.txt 
grep -v apple test.txt 
ip ad|grep inet
ip a|grep lo
grep -i "grape" test.txt 
grep -iv "grape" test.txt 
grep "^apple" test.txt 
grep "^a" test.txt 
grep "0$" test.txt 
grep "^q0$" test.txt 
grep "^a0$" test.txt 
grep "^$" demo2.txt
grep "^$" test.txt 
cat test.txt 
vim test.txt 
grep "^$" test.txt 
grep -v "^$" test.txt 
man grep
cat > demo3.txt <<EOF
zhangsan 23 man
lisi 25 woman
wangwu 27 man
zhaoliu 22 woman
tom 19 boy
jerry 20 girl
EOF

grep -E "lisi|tom" demo3.txt 
grep -E "(lisi|tom)$" demo3.txt 
grep -E "(lisi|tom)" demo3.txt 
grep -E "^(lisi|tom)" demo3.txt 
egrep -v "lisi|zhaoliu" demo3.txt 
egrep -v "^$|^#" demo3.txt 
vim demo3.txt 
egrep -v "^$|^#" demo3.txt 
egrep -vn "^$|^#" demo3.txt 
egrep -vns "^$|^#" demo3.txt 
egrep -vo "^$|^#" demo3.txt 
grep -o "lisi "demo3.txt 
grep -o "lisi" demo3.txt 
grep -on "lisi" demo3.txt 
s
ls
man grep
ls
mkdir good
mkdir good/hello
mkdir good/hello/nihao
vim good/hello/nihao/plf
tree
yum install -y tree
man grep
grep -r "1" .
grep -r "123" .
grep -rc "123" .
man grep
grep -c "123" .
grep -c "123" /good/hello/nihao/plf
grep -c "123" /good/hello/nihao/
l
ls
grep -c "123" /good/hello/nihao/
tree
grep -c "123" /good/hello/nihao/plf
man grep
cat > access.log << 'EOF'
2026-10-12 09:00:01 INFO  192.168.1.10 "GET /index.html" 200 45ms
2026-10-12 09:00:05 ERROR 10.0.0.5 "GET /api/user" 500 120ms
2026-10-12 09:01:12 WARN  192.168.1.22 "POST /api/login" 401 89ms
2026-10-12 09:02:44 INFO  172.16.0.8 "GET /static/logo.png" 200 12ms
2026-10-12 09:03:10 ERROR 192.168.1.10 "GET /api/order" 500 300ms
2026-10-12 09:04:00 INFO  10.0.0.5 "GET /favicon.ico" 404 8ms
2026-10-12 09:05:21 ERROR 172.16.0.99 "POST /api/pay" 502 999ms
2026-10-12 09:06:33 INFO  192.168.1.100 "GET /index.html" 200 47ms
2026-10-12 09:07:45 WARN  10.0.0.88 "GET /api/user?id=abc" 400 15ms
2026-10-12 09:09:09 ERROR 10.0.0.66 "GET /api/debug" 500 888ms message=timeout timeout
2026-10-12 09:10:02 ERROR 192.168.1.10 "GET /api/user" 500 128ms
2026-10-12 09:11:17 INFO  172.16.0.8 "GET /about.html" 200 33ms
2026-10-12 09:12:40 WARN  192.168.1.22 "DELETE /api/cache" 403 66ms
2026-10-12 09:13:03 INFO  10.0.0.5 "GET /index.html" 200 44ms
2026-10-12 09:14:29 ERROR 172.16.0.99 "GET /api/pay" 500 500ms
2026-10-12 09:15:50 INFO  192.168.1.10 "POST /api/login" 200 95ms
2026-10-12 09:16:08 WARN  10.0.0.88 "GET /static/app.js" 404 9ms
2026-10-12 09:17:31 INFO  172.16.0.8 "GET /api/user" 200 101ms
2026-10-12 09:18:44 ERROR 192.168.1.22 "GET /api/order" 503 750ms
2026-10-12 09:19:59 INFO  10.0.0.5 "GET /api/status" 200 5ms
EOF

ls
grep "ERROR" access.log 
grep -w "ERROR" access.log 
grep -c "192.168.1.10" access.log 
grep -nc "192.168.1.10" access.log 
grep -c "192.168.1.10" access.log 
cat access.log 
grep -wc "192.168.1.10" access.log 
grep -w "ERROR" access.log 
grep -wc "ERROR" access.log 
grep -w "ERROR" access.log |wc -l
grep -wc "ERROR" access.log 
grep -w "ERROR" access.log |wc -l
grep -w "ERROR" access.log 
grep -w 404 access.log 
grep -wo "ERROR" access.log 
grep -E "(1[0-9]{1,3}\.){3}[0-9]{1-3}" access.log 
grep -E "(1[0-9]{1,2}\.){3}[0-9]{1-3}" access.log 
grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" access.log 
grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" access.log |wc -l
grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" access.log 
grep -E "09:0[0-9]{1}" access.log 
grep -E "09:0[0-9]{1}" access.log |wc -l
grep -E "5[0-9]{2}" access.log |wc -l
grep -E "ms$" access.log |wc -l
grep -E "[2-9][0-9]{2,}|[1-9][0-9][1-9]ms$" access.log |wc -l
history
hostnamectl set-hostname k3s-server
su
ls
rm -rf hello/
ls
curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh |   INSTALL_K3S_MIRROR=cn   INSTALL_K3S_EXEC="--disable=traefik --write-kubeconfig-mode 644"   sh -
ls
mkdir -p ~/.kube && sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config   && sudo chown $USER:$USER ~/.kube/config
kubectl get nodes
kubectl get pods -A
kubectl top node
cat /var/lib/rancher/k3s/server/node-token
kubectl get nodes
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
kubectl get nodes
[200~kubectl get nodes~
kubectl get nodes
setenforce 0
sed -i 's/^SELINUX=enforcing/SELINUX=permissive/' /etc/selinux/config
systemctl stop firewalld
systemctl disable firewalld
kubectl get nodes
helm install ingress-nginx ingress-nginx/ingress-nginx   -n ingress-nginx --create-namespace   --set controller.service.type=LoadBalancer
kubectl get svc -n ingress-nginx
kubectl create namespace harbor
helm repo add harbor https://helm.goharbor.io
helm repo update
cat > harbor-values.yaml <<EOF
expose:
  type: nodePort
  tls:
    enabled: false
  nodePort:
    name: harbor
    ports:
      http:
        port: 80
        nodePort: 30002
externalURL: http://192.168.118.100:30002
harborAdminPassword: "Harbor12345"
EOF

helm install harbor harbor/harbor -n harbor -f harbor-values.yaml
kubectl get pods -n harbor  
mkdir -p /etc/rancher/k3s
cat /etc/rancher/k3s/registries.yaml
sudo tee /etc/rancher/k3s/registries.yaml <<EOF
mirrors:
  "192.168.118.100:30002":
    endpoint:
      - "http://192.168.118.100:30002"
EOF

sudo systemctl restart k3s
kubectl create namespace dev
kubectl create namespace prod
kubectl -n dev create secret docker-registry harbor-cred   --docker-server=192.168.118.100:30002   --docker-username=admin   --docker-password=Harbor12345
kubectl -n prod create secret docker-registry harbor-cred   --docker-server=192.168.118.100:30002   --docker-username=admin   --docker-password=Harbor12345
kubectl -n dev  get secret harbor-cred
kubectl -n prod get secret harbor-cred
kubectl create namespace argocd
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
cat > argocd-values.yaml <<EOF
server:
  service:
    type: NodePort
    nodePortHttp: 30081
configs:
  params:
    server.insecure: "true"   
EOF

helm install argocd argo/argo-cd -n argocd -f argocd-values.yaml
kubectl -n argocd get secret argocd-initial-admin-secret   -o jsonpath="{.data.password}" | base64 -d; echo
kubectl -n argocd get svc argocd-server
kubectl create namespace monitoring
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
cat > prom-values.yaml <<EOF
grafana:
  adminPassword: "Grafana12345"
  service:
    type: NodePort
    nodePort: 30090
alertmanager:
  service:
    type: NodePort
    nodePort: 30093
EOF

helm install kube-prometheus-stack prometheus-community/kube-prometheus-stack   -n monitoring -f prom-values.yaml
history
helm list repo
helm  repo list
helm repo update
top
init 0
