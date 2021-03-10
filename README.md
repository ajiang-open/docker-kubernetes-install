# docker-kubernetes-install
无需科学上网，安装docker版本的kubernetes，包括Desktop版本。当前支持Docker的版本如下：
* Stable:3.2.1
 
## 拉取镜像并启用kubernetes

首先需要拉取kubernetes所需镜像（执行load_images.sh文件）：
```bash
sh load_images.sh
```
如果包版本不对，可以基于如下命令查看需要的包（仅支持Linux版本Docker）：
```bash
kubeadm config images list
```
也可以基于以下方式逐个确认各个组件版本号：
* kubernetes版本可以在docker的有关信息中找，如在桌面版中，点击docker图标下拉菜单里的About Docker Desktop，弹出的界面里就有k8s的版本号。
* 其它组件的版本，可以在此文件中找到：https://github.com/kubernetes/kubernetes/blob/master/build/dependencies.yaml（需要选择对应的k8s版本的tag，其中etcd的版本要加-0）。
