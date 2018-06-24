mkdir 0.0.4
GOOS=linux GOARCH=amd64 go build -o ./0.0.4/salienbot-0.0.4-linux-x64 .
GOOS=linux GOARCH=386 go build -o ./0.0.4/salienbot-0.0.4-linux-x86 .
GOOS=darwin GOARCH=amd64 go build -o ./0.0.4/salienbot-0.0.4-darwin .
GOOS=windows GOARCH=amd64 go build -o ./0.0.4/salienbot-0.0.4-win64.exe .
GOOS=windows GOARCH=386 go build -o ./0.0.4/salienbot-0.0.4-win32.exe .
GOOS=linux GOARCH=arm go build -o ./0.0.4/salienbot-0.0.4-linux-arm .
GOOS=linux GOARCH=arm64 go build -o ./0.0.4/salienbot-0.0.4-linux-arm64 .

docker build -t azusa0127/salienbot-go . && docker push azusa0127/salienbot-go