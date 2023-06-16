# Kubernetes (K8s)

Kubernetes (K8s) is an open-source platform developed by Google and now maintained by Cloud Native Computing Foundation (CNCF) that orchestrates containers. It can automate the deployment, scaling and management of containerised applications.

## Benefits of using K8s

Some benefits of using K8s include:

- **Scalability:** add or remove containers as needed.

- **High availability:** auto restart of containers.

- **Load balancing:** evenly distribute traffic across containers.

- **Service discovery:** enables apps to communicate with each other using DNS/IP.

- **Self-healing:** continuously monitors health of apps, restart or replacing failed containers.

- **Rolling updates:** ensures zero-downtime and can roll back to previous version.

- **Infrastructure abstraction:** can deploy and manage apps across various platforms e.g. cloud/on-premise.

## Key Components of K8s

- **K8s Control Plane:** the central management component (brain) of Kubernetes. It includes the API server for communication, the scheduler for pod assignment, and the controller manager for maintaining the desired cluster state.

- **K8s Cluster:** a group of nodes that work together to run containerised applications.

- **K8s Nodes:** the worker machines in a Kubernetes cluster that run containers.

- **K8s Pods:** the basic units that run containers in Kubernetes.

- **K8s Objects:** the building blocks used to deploy and manage applications within Kubernetes.

- **K8s Services:** provide a way to expose applications running in the cluster to external clients or other services.

- **K8s Deployments:** allow you to define and manage the desired state of your applications.

- **K8s Etcd:** distributed (d) key-value store used by Kubernetes to store and replicate cluster configuration and state information (etc). It ensures consistency and fault tolerance, making the cluster stable and reliable.

## Self-healing using K8s

Self-healing in K8s refers to its ability to automatically detect and recover from failures.

If a pod or container within a pod fails, Kubernetes will automatically restart the failed container or reschedule the pod onto a healthy node, ensuring that the desired state is maintained.

## Auto-scaling using K8s

Auto scaling with K8s enables you to automatically adjust the number of pods or replicas based on metrics such as CPU usage, memory consumption, or custom application metrics.

Kubernetes provides horizontal pod autoscaling (HPA) and cluster autoscaling to scale your applications and clusters, respectively, based on demand.

## Deploying microservices using K8s

K8s is commonly used for deploying microservices, which involves breaking down applications into smaller, loosely coupled, independent microservices, each running in its own container.

You can then use Kubernetes objects like deployments, services, and ingress resources to manage and expose these microservices within the cluster.
