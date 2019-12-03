# Notes

It will send Github event as a Gitlab variable named `GITHUB_EVENT_B64_ENCODED` so you can then use it like this in your Gitlab job:
```
if [ ! -z "${GITHUB_EVENT_B64_ENCODED}" ]
then
  echo ${GITHUB_EVENT_B64_ENCODED} | base64 -d > /tmp/github-event.json
fi
```
