#!/bin/bash
pushd . > /dev/null

cd project/
/Applications/Unity/Unity.app/Contents/MacOS/Unity -batchmode -projectPath `pwd` -exportPackage Assets `ls ProjectSettings/*` ouya-unity-2d-demo.unitypackage -logFile output.log -quit
mv ouya-unity-2d-demo.unitypackage ..

popd > /dev/null

