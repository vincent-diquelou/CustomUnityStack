BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color
REPO="https://github.com/vincent-diquelou/CustomUnityStack.git/trunk/"
RAW_REPO="https://raw.githubusercontent.com/vincent-diquelou/CustomUnityStack/main/"

echo -e "${BLUE}===== Deleting folders ... =====${NC}"

rm -rf Assets/Scripts/Utils/
rm -rf Assets/Scripts/Tools/
rm -rf Assets/Plugins/
rm -rf Assets/ExternalAssets/
rm -rf Assets/3D/Materials/

echo -e "${BLUE}===== Creating folders ... =====${NC}"

mkdir Assets/2D/
mkdir Assets/2D/Atlas/
mkdir Assets/2D/Textures/
mkdir Assets/3D/
mkdir Assets/3D/Materials/
mkdir Assets/3D/Models/
mkdir Assets/3D/Shaders/
mkdir Assets/3D/Animations/
mkdir Assets/ExternalAssets/
mkdir Assets/Prefabs/
mkdir Assets/Scripts/
mkdir Assets/Scripts/Editor/
mkdir Assets/Audio/
echo -e "${GREEN}===== Folders created =====${NC}"

wget "${RAW_REPO}UNITY.gitignore" -O .gitignore
echo -e "${BLUE}===== Downloading .gitignore ... =====${NC}"
echo -e "${GREEN}===== .gitignore downloaded =====${NC}"

git clone --depth 1 https://github.com/vincent-diquelou/CustomUnityStack

mv CustomUnityStack/Utils/ Assets/Scripts/
mv CustomUnityStack/Tools/ Assets/Scripts/
mv CustomUnityStack/Plugins/ Assets/
mv CustomUnityStack/ExternalAssets/ Assets/
mv CustomUnityStack/DebugMaterials/ Assets/3D/Materials/

rm -rf CustomUnityStack
