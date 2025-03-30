# viva-tools

실험적인 기능들을 만들기 위한 웹페이지입니다.

## 기능

- 건강검진결과 PDF 파일 데이터를 추출해서 및 CH코드와 매칭된 엑셀파일을 생성합니다.

## 프로젝트 구조

### Backend

```
backend/
├── src/                      # 소스 코드
│   ├── api/                  # API 엔드포인트
│   │   ├── routes/          # 라우터
│   │   └── schemas/         # Pydantic 모델
│   ├── core/                # 핵심 설정
│   │   └── config.py        # 환경 설정
│   ├── services/            # 비즈니스 로직
│   │   └── pdf_service.py   # PDF 처리 서비스
│   ├── utils/               # 유틸리티
│   │   ├── pdf_extractor.py # PDF 데이터 추출
│   │   └── text_normalizer.py # 텍스트 정규화
│   └── main.py              # 앱 진입점
├── scripts/                  # 스크립트
│   └── run.py               # 개발 서버 실행
├── uploads/                  # 업로드 파일 (임시)
└── pyproject.toml           # 프로젝트 설정
```

### Frontend

```
frontend/
├── src/                    # 소스 코드
│   ├── App.tsx            # 메인 컴포넌트
│   ├── index.tsx          # 앱 진입점
│   └── index.css          # 전역 스타일
├── public/                 # 정적 파일
├── package.json           # 프로젝트 설정
├── tsconfig.json          # TypeScript 설정
└── vite.config.ts         # Vite 설정
```

### Infra

```
infra/
├── environments
│   └── dev
└── modules
    ├── s3
    └── terraform_state
```

## 실행 방법

### Backend

```bash
# backend 디렉토리로 이동
cd backend

# Poetry 가상환경 설치 및 활성화
poetry install
poetry shell

# 개발 서버 실행
poetry run dev
```

서버는 http://localhost:8000 에서 실행됩니다.

### Frontend

```bash
# frontend 디렉토리로 이동
cd frontend

# 의존성 설치
npm install

# 개발 서버 실행
npm run dev
```

### Infra

```bash
# AWS 프로파일 설정
# 테라폼은 tf 프로파일을 사용하여 AWS 리소스에 접근합니다
aws configure --profile viva-tools-dev

cd infra/environments/dev

# 테라폼 초기화
terraform init

# 배포 계획 확인
terraform plan

# 인프라 배포
terraform apply
```

- 테라폼으로 생성된 S3 버킷은 정적 웹 호스팅이 활성화되어 있습니다. 프론트엔드 빌드 결과물을 직접 업로드하려면

```bash
cd frontend
npm run build
aws s3 sync build/ s3://viva-tools-frontend-dev --delete --profile viva-tools-dev
```

클라이언트는 http://localhost:3000 에서 실행됩니다.

## 기술 스택

### Backend

- FastAPI
- Python 3.9+
- Poetry
- pdfplumber
- pandas

### Frontend

- React
- TypeScript
- Vite
- Material-UI
- Axios

### Infra

- Terraform