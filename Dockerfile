FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

# Install basic packages
RUN apt update
RUN apt install gnupg git curl make g++ wget zip tzdata -y

# TODO: Install code and requirements
# RUN git clone https://oauth2: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@github.com/hyukkyukang/table-to-text.git /home/table-to-text
# RUN cd /home/table-to-text && pip install -r requirements.txt
# TODO: Install transformers from source
# RUN python -c "import transformers; transformers.T5ForConditionalGeneration.from_pretrained('t5-small')"

# Set timezone
RUN ln -fs /usr/share/zoneinfo/Asia/Seoul /etc/localtime && dpkg-reconfigure -f noninteractive tzdata