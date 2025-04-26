# hyphanet-deploy

This repo contains a Dockerfile to build and deploy a Hyphanet (Freenet) node  
on Koyeb’s free container platform.

## How it works

- **Dockerfile** downloads the Hyphanet installer and runs it headlessly  
- On first start it bootstraps the node; thereafter it simply launches Hyphanet  
- Koyeb mounts `/data` and `/conf` for persistence and exposes port `8888`

## Deployment

1. Grant Koyeb’s GitHub App access to this repo  
2. In Koyeb, **Import project** → select `hyphanet-deploy`  
3. Attach volumes:
   - Host `/data` → Container `/data`
   - Host `/conf` → Container `/conf`
4. Expose port **8888** (HTTP)  
5. Deploy and browse to your Koyeb URL
