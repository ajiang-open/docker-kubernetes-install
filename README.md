# docker-kubernetes-install
无需科学上网，安装docker版本的kubernetes，包括Desktop版本。当前的版本支持Docker Edge 2.3.2.0。

## 拉取镜像并启用kubernetes

首先需要拉取kubernetes所需镜像（执行load_images.sh文件）：
```bash
sh load_images.sh
```
如果包版本不对，可以基于如下命令查看需要的包（仅支持Linux版本Docker）：
```bash
kubeadm config images list
```
或者，在对应的kubernetes的github仓库里选择对应的tag：
* kubernetes版本可以在docker的有关信息中找，如在桌面版中，点击docker图标下拉菜单里的About Docker Desktop，弹出的界面里就有k8s的版本号。
* etcd版本在 https://github.com/kubernetes/kubernetes/blob/master/cluster/images/etcd/Makefile 文件里找版本号（注意版本号后要加-0）。
* pause版本在https://github.com/kubernetes/kubernetes/blob/master/build/pause/Makefile 里找。
* coredns版本在https://github.com/coredns/deployment/blob/master/kubernetes/CoreDNS-k8s_version.md 里找。
