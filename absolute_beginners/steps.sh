systemctl enable docker
systemctl enable --now kubelet
swapoff -a
echo "1" > /proc/sys/net/bridge/bridge-nf-call-iptables

kubeadm join 192.168.1.102:6443 --token 2ihl4u.q5o9gcdfl06l6rdv     --discovery-token-ca-cert-hash sha256:552d307cfe2eb6cf6dd28571cf71096442668736dadc651310bdc5e15e2538c
