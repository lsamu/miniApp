git:
	./_git.sh

github:
	proxychains4 git push -f https://github.com/lsamu/miniApp.git main

android:
	flutter run -d android

web:
	flutter run -d chrome

linux:
	flutter run -d linux

release:
	flutter clean
	flutter build apk --release