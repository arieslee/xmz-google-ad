#!/bin/bash
# 定义颜色
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # 没有颜色
# 解决 grep -P 报错：在脚本开头设置语言环境
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# 获取当前分支
currentBranch=$(git branch --show-current)

# 显示当前的 git status
echo -e "${GREEN}当前 Git 状态:${NC}"
git status

# 提示用户是否继续
echo -e "${YELLOW}是否继续提交和推送？(y/n): ${NC}"
read confirm
confirm=${confirm:-y}
if [[ "$confirm" != "y" ]]; then
    echo "操作已取消。"
    exit 1
fi

# 提示用户输入提交信息、分支和目录
echo -e "${YELLOW}请输入提交信息 (默认: update): ${NC}"
read message
echo -e "${RED}请输入分支名称 (当前分支为：$currentBranch, 默认: $currentBranch): ${NC}"
read branch
echo -e "${GREEN}请输入目录路径 (默认: ./): ${NC}"
read dir

# 如果用户未输入，使用默认值
message=${message:-update}
branch=${branch:-$currentBranch}
dir=${dir:-.}

echo -e "${YELLOW}提交信息: $message${NC}"
echo -e "${RED}分支名称: $branch${NC}"
echo -e "${GREEN}目录路径: $dir${NC}"


# 添加更改并提交
git add $dir
echo -e "${BLUE}正在执行 git commit${NC}"
git commit -m "$message"

# 推送分支和标签到远程仓库
echo -e "${BLUE}正在推送分支到远程仓库${NC}"
git push origin "$branch"
echo -e "${BLUE}正在推送标签到远程仓库${NC}"
git push origin "$version"

echo -e "${GREEN}操作成功！${NC}"
