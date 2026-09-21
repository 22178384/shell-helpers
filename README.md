# shell-helpers

> 一组可 `source` 的 Bash 函数，复用到各种脚本里。

## 用法
    source shell-helpers.sh
    log_info "开始处理"
    if confirm "确定吗"; then ...; fi

## 函数
- `log_info` / `log_warn`：带时间戳的日志
- `confirm`：交互式确认
- `retry`：命令失败重试

## 生态联动
- 另一个片段盒 → [@22178384/snippet-box](https://github.com/22178384/snippet-box)
