FROM codercom/code-server:4.114.1

RUN curl -fsSL https://claude.ai/install.sh | bash

ENV PATH="/home/coder/.claude/local/bin:$PATH"
