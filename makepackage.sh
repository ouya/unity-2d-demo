#!/bin/bash
pushd . > /dev/null

cd project/
/Applications/Unity/Unity.app/Contents/MacOS/Unity -batchmode -projectPath `pwd` -exportPackage Assets `ls ProjectSettings/*` dist.unitypackage -logFile output.log -quit
mv dist.unitypackage ..

popd > /dev/null

