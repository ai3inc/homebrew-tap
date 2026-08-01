# BizCoder — Homebrew tap

기업용 AI 코딩 에이전트 [BizCoder](https://bizcoder.ai) 의 Homebrew 설치 경로예요.

```sh
brew install ai3inc/tap/bizcoder
```

업데이트는 이렇게 해요.

```sh
brew upgrade bizcoder
```

## 이 레포에 뭐가 들어 있나요

`Formula/bizcoder.rb` **한 파일**뿐이에요. 버전·다운로드 주소·체크섬만 들어 있고,
소스코드는 들어 있지 않아요. 실행 파일은 npm 레지스트리에 공개로 올라간 것을 받아 써요.

이 파일은 손으로 고치지 않아요 — npm 최신 발행본을 보고 자동으로 갱신돼요.

## 다른 설치 방법

| 방법 | 명령 |
|---|---|
| Homebrew (맥·리눅스) | `brew install ai3inc/tap/bizcoder` |
| 설치 스크립트 (맥·리눅스, Node 불필요) | `curl -fsSL https://bizcoder.ai/install \| bash` |
| npm (전 플랫폼, Node 필요) | `npm install -g bizcoder` |
