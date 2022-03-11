{
cd /rook-ceph/
helm install --create-namespace --namespace rook-ceph rook-ceph . -f values.yaml
}
{
cd ..
cd /rook-ceph-cluster/
helm install --namespace rook-ceph rook-ceph-cluster . -f values.yaml
}
sleep 30
{
cd ..
kubectl create -f sc-pv-pvc-ceph-block.yaml -n  rook-ceph
}



