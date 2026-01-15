# 배포 가이드

## 저장소 구조

- **ms-fundamentals**: 소스 코드 저장소 (이 저장소)
  - 블로그 소스 코드
  - Discussions
  - Issues
  - Pull Requests

- **mslee98.github.io**: GitHub Pages 배포 저장소
  - 빌드된 정적 파일만 저장
  - `https://mslee98.github.io`로 접근 가능

## 배포 방법

### 방법 1: GitHub Actions 자동 배포 (권장)

1. **Personal Access Token 생성**
   - GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
   - `repo` 권한 선택
   - 토큰 생성 후 복사

2. **Secret 설정**
   - ms-fundamentals 저장소 → Settings → Secrets and variables → Actions
   - New repository secret 추가
   - Name: `DEPLOY_TOKEN`
   - Value: 생성한 Personal Access Token

3. **자동 배포**
   - `main` 브랜치에 푸시하면 자동으로 빌드 및 배포됩니다.

### 방법 2: 수동 배포

```bash
# 1. 빌드
yarn docs:build

# 2. mslee98.github.io 저장소 클론 (처음 한 번만)
cd ..
git clone https://github.com/mslee98/mslee98.github.io.git
cd github-blog

# 3. 빌드된 파일 복사
cp -r .vitepress/dist/* ../mslee98.github.io/

# 4. 배포 저장소로 이동하여 커밋 및 푸시
cd ../mslee98.github.io
git add .
git commit -m "Deploy: Update from ms-fundamentals"
git push origin main
```

### 배포 스크립트 사용

```bash
yarn deploy:help
```

스크립트가 배포 방법을 안내합니다.

## 주의사항

- `mslee98.github.io` 저장소는 빌드된 파일만 포함해야 합니다.
- 소스 코드는 `ms-fundamentals`에만 저장합니다.
- 빌드된 파일은 `.vitepress/dist` 디렉토리에 생성됩니다.
