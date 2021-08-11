git:
	./_git.sh

github:
	git config --global https.proxy http://127.0.0.1:1080
	git config --global https.proxy https://127.0.0.1:1080
	git config --global http.proxy 'socks5://127.0.0.1:1080'
	git config --global https.proxy 'socks5://127.0.0.1:1080'

	git push github main

	git config --global --unset http.proxy
	git config --global --unset https.proxy

android:
	flutter run -d android

web:
	flutter run -d chrome

linux:
	flutter run -d linux