apiVersion: v1
kind: Service
metadata:
  name: nginx-service
  labels:
    app: nginx-service
spec:
  ports:
  - port: 3000
    name: http
    targetPort: 3000
  selector:
    app: ${PROTOTYPE_NAME}