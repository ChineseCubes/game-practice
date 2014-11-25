all ::
	#cp -Rf index.html js images assets www/

android ::
	jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore platforms/android/ant-build/ChineseCubesPracticeGame-release-unsigned.apk alias_name
	zipalign -v 4 platforms/android/ant-build/ChineseCubesPracticeGame-release-unsigned.apk ChineseCubesPracticeGame.apk
