# ioquake3 docker

A docker setup for ioquake3 (The Quake III Arena source port) that actually works.

Put your retail Quake 3 Arena `pak0.pk3` in `base/baseq3` and the patches from [https://ioquake3.org/extras/patch-data/](https://ioquake3.org/extras/patch-data/) in `base/baseq3` and `base/missionpack`.

Put your custom maps and junk in `content`, the compose file binds it to the user level search path so logs and junk will appear there too.

Rename `server.example.cfg` to `server.cfg`, use it for your server configuration.
