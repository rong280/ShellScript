#!/bin/bash
#Author：Vincent Huang
#date：2021-06-01

KUBE=v1.21.0
V_PAUSE=3.4.1
V_ETCD=3.4.13-0
V_COREDNS=v1.8.0

GCR=registry.cn-shenzhen.aliyuncs.com/k8s_hub

declare -a image

image[0]=${GCR}/kube-apiserver:${KUBE}
image[1]=${GCR}/kube-proxy:${KUBE}
image[2]=${GCR}/kube-controller-manager:${KUBE}
image[3]=${GCR}/kube-scheduler:${KUBE}
image[4]=${GCR}/pause:${V_PAUSE}
image[5]=${GCR}/etcd:${V_ETCD}
image[6]=${GCR}/coredns:${V_COREDNS}

for mirror in ${image[*]}
do
	docker pull ${mirror}
	if [ $? = 0 ];then
		RETAG=k8s.gcr.io/$(echo ${mirror} | awk -F'/' '{if($3 ~ /coredns/) {print "coredns/"$NF} else {print $NF}}')
		docker tag ${mirror} ${RETAG}
		docker rmi ${mirror}
		echo
	else
		echo && echo 镜像拉取失败，请检查网络和DNS，禁止使用百度DNS！
		exit
	fi
done
