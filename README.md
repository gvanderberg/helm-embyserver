```bash
docker build -t embyserver:latest .
docker run -ti --rm --name embyserver -p 8096:8096 -v d:/emby:/var/lib/emby -v d:/movies:/emby/movies embyserver:latest
```
```bash
docker run -ti --rm --name embyserver -p 8096:8096 -v d:/emby:/config -v d:/movies:/emby/movies emby/embyserver:latest
```