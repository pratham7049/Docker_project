# **Node Application with Optimized Docker Image**

This project demonstrates a lightweight Express.js application optimized for a minimal Docker image size.

---

## **Techniques Used**

1. **Minimal Base Image**: Using `node:18-alpine` for a smaller image footprint.
2. **Multi-Stage Builds**: Separating build and runtime environments to include only essential files.
3. **Production Dependencies**: Installed with `npm ci --only=production` to exclude devDependencies.
4. **.dockerignore
