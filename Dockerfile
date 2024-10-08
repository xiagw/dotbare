FROM bash:latest
WORKDIR /root
COPY ./ /root/dotbare
RUN apk add --no-cache git vim fzf; \
    echo "source /root/dotbare/dotbare.plugin.bash" >> "$HOME"/.bashrc
ENTRYPOINT ["bash"]
