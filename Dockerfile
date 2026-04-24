FROM codercom/code-server:4.114.1

RUN curl -fsSL https://claude.ai/install.sh | bash -s -- 2.1.109

# Patch the upstream code-server entrypoint to restore the persisted Claude
# config on every container start. Runtime mkdir is required because a volume
# mount over /home/coder/.claude would wipe anything created at build time.
USER root
RUN sed -i '1a mkdir -p /home/coder/.claude/backups && ln -sfn /home/coder/.claude/backups/.claude.json /home/coder/.claude.json || true' /usr/bin/entrypoint.sh
USER coder
ENV PATH="/home/coder/.claude/local/bin:$PATH"
