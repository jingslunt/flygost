# flygost
```
fly launch  #启动
fly deploy  #更新
fly status  #查看地区
```

客户端gost.yaml
```
services:
- name: client-to-flyme
  addr: ":1080"
  handler:
    type: socks5
    chain: chain-0
  listener:
    type: tcp
chains:
- name: chain-0
  hops:
  - name: hop-0
    nodes:
    - name: node-0
      addr: flygost.fly.dev:443
      connector:
        type: socks5
        auth:
          username: flygost
          password: fly.io@Gost
      dialer:
        type: mwss
        metadata:
          host: "flygost.fly.dev" 
          path: "/ws" 
          header: {} 
```
