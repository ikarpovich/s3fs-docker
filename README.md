# S3FS in Docker

A multiarch image to mount an S3 Bucket as a FUSE filesystem

This image is intended to be a drop-in replacement for mephistoxol/s3fs

### Environment Variables

| Env. Variable | Description                    |
| ------------- |--------------------------------| 
| S3_BUCKET     | S3 Bucket Name                 |
| S3_URL        | S3 EndPoint like minio, aws... |
| OPTION        | Additional options S3FS-FUSE   |

### Install

S3FS Credentials file must be mount at `/root/passwd-s3fs`
