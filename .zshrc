
alias bye='shutdown now'
alias comebacklater='shutdown now -r'
alias gps='git push'
alias gpl='git pull'
alias rstag='yarn start:stag'
alias pn=pnpm
alias cursor=/home/aniruddha/.local/share/cursor/cursor.AppImage
alias exploreBranches='git log --graph --decorate --all --pretty=format:"%C(auto)%h%d %C(#888888)(%an; %ar)%Creset %s"'

function acp() {
  git add .
  git commit -m "$1"
  git push
}

copu(){
  readonly message=${1:?"Commit message is required"}
  git commit -m "$message"
  git push
}

mergeMaster(){
  readonly branchToMerge=${1?"Specify which branch to merge with master"}
  git checkout master &&\
  git merge "$branchToMerge" &&\
  git push &&\ 
  git checkout "$branchToMerge"
}

mergeWith(){
  readonly with=${1?"Specify branch to merge with"}
  readonly to=${2?"Specify branch to checkout after merge"}
  git checkout "$with" &&\
  git merge "$to" && \
  git push &&\
  git checkout "$to"
}
