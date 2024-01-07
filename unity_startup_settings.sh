BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color
REPO="https://github.com/vincent-diquelou/CustomUnityStack.git/trunk/"
RAW_REPO="https://raw.githubusercontent.com/vincent-diquelou/CustomUnityStack/main/"

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

echo -e "${BLUE}===== Downloading .gitignore ... =====${NC}"
wget "${RAW_REPO}UNITY.gitignore" -O .gitignore
echo -e "${GREEN}===== .gitignore downloaded =====${NC}"

echo -e "${BLUE}===== Downloading Utils scrips folder ... =====${NC}"
git svn clone -r HEAD "${REPO}/Utils"
rm -rf Utils/.git
mv Utils/ Assets/Scripts/
echo -e "${GREEN}===== Utils scrips folder downloaded =====${NC}"

echo -e "${BLUE}===== Downloading Tools folder ... =====${NC}"
git svn clone -r HEAD "${REPO}/Tools"
rm -rf Tools/.git
mv Tools/ Assets/Scripts/
echo -e "${GREEN}===== Tools folder downloaded =====${NC}"

echo -e "${BLUE}===== Downloading Plugins folder ... =====${NC}"
git svn clone -r HEAD "${REPO}/Plugins"
rm -rf Plugins/.git
mv Plugins/ Assets/
echo -e "${GREEN}===== Tools Plugins downloaded =====${NC}"

echo -e "${BLUE}===== Downloading ExternalAssets folder ... =====${NC}"
git svn clone -r HEAD "${REPO}/ExternalAssets"
rm -rf ExternalAssets/.git
mv ExternalAssets/ Assets/
echo -e "${GREEN}===== ExternalAssets downloaded =====${NC}"

echo -e "${BLUE}===== Downloading DebugMaterials folder ... =====${NC}"
git svn clone -r HEAD "${REPO}/DebugMaterials"
rm -rf DebugMaterials/.git
mv DebugMaterials/ Assets/3D/Materials/
echo -e "${GREEN}===== DebugMaterials downloaded =====${NC}"