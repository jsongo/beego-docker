# How to use:
    Create a Dockerfile in the root directory of your beego project with the content like:
'''
from jsongo/beego:latest
ENV CODE_PATH=techzto.com/bee-graphql
'''  
If there are other dependencies, add them to a glide.yaml and append this line to your Dockerfile:  
RUN glide --yaml ./main/glide.yaml install
