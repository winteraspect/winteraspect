# script to manipulate the blog website from R
library('blogdown')
library('processx')
# real-time rendering 
file.edit("~/.Rprofile")


options(blogdown.hugo.server = c("-D", "-F","--navigateToChanged"))
options(blogdown.generator.server = T)
#options(blogdown.server.timeout = 60)
serve_site()

# build

if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

build_site()

# new post
#options(blogdown.subdir = 'cn')
#new_post(title = '我到底需要阅读啥',author = 'Winter.DL',tag = c("中文", "阅读", "生活"),ext = '.Rmd', ,file = 'post/what_to_read/读点啥.Rmd')
new_post(title = '分形计算入门笔记',author = 'Winter.DL',tag = c("笔记", "建模", "数学"),ext = '.Rmd', ,file = 'post/fractal/分形计算入门笔记.Rmd')
new_post(title = '2019年终总结',author = 'Winter.DL',tag = c("工作","总结", "生活"),ext = '.Rmd', ,file = 'post/summary/2019.Rmd')

blogdown::stop_server()



