#!/bin/bash

# mslee98.github.io에 빌드된 파일 배포 스크립트

echo "🚀 Building VitePress site..."
yarn docs:build

echo "📦 Build completed. Files are in .vitepress/dist"

# mslee98.github.io 저장소로 배포하는 방법:
# 1. mslee98.github.io 저장소를 클론
# 2. .vitepress/dist의 내용을 복사
# 3. 커밋 및 푸시

echo ""
echo "다음 명령어를 실행하세요:"
echo ""
echo "1. mslee98.github.io 저장소 클론 (또는 이미 있다면 해당 디렉토리로 이동):"
echo "   git clone https://github.com/mslee98/mslee98.github.io.git ../mslee98.github.io"
echo ""
echo "2. 빌드된 파일 복사:"
echo "   cp -r .vitepress/dist/* ../mslee98.github.io/"
echo ""
echo "3. mslee98.github.io 디렉토리로 이동 후 커밋 및 푸시:"
echo "   cd ../mslee98.github.io"
echo "   git add ."
echo "   git commit -m 'Deploy: Update from ms-fundamentals'"
echo "   git push origin main"
echo ""
