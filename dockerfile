{
    "services": [
        {
            "type": "app",
            "data": {
                "projectName": "pihole",
                "serviceName": "pihole",
                "source": {
                    "type": "image",
                    "image": "pihole/pihole:2024.01.0"
                },
                "ports": [
                    {
                        "published": 53,
                        "target": 53
                    },
                    {
                        "published": 53,
                        "target": 53
                    },
                    {
                        "published": 7300,
                        "target": 9999
                    }
                ],
                "mounts": [
                    {
                        "type": "bind",
                        "hostPath": "/data/pihole/data/pihole",
                        "mountPath": "/etc/pihole"
                    },
                    {
                        "type": "bind",
                        "hostPath": "/data/pihole/data/dnsmasq",
                        "mountPath": "/etc/dnsmasq.d"
                    }
                ]
            }
        }
    ]
}