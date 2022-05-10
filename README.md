# frontend

## Deployment

Hosted as a service on Google Kubernetes Engine in GCP and can be accessed [here](http://34.88.170.226/). 

The Dockerfile generates a production build with static files which are served by NGINX. 

The image is built and pushed to Google Artifact Registry and then deployed to GKE using [K8S manifests](https://github.com/kjelljoakim/kindly-case-frontend/tree/main/manifests) in Github Actions (see [workflows](https://github.com/kjelljoakim/kindly-case-frontend/tree/main/.github/workflows)).
