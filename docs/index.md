# Welcome to Fish SIA

Fish's Scientific Internet Access.

## Project layout

    public-artifacts        # 公共文件
        Rules               # 公共的 Rules
            Surge           # Surge List
        Configs             # 公共的 Configs
            ClashMeta.yaml  # Clash.Meta 的配置文件, 使用前需修改其中的 provider

    Configs                 # 私人的 Configs
    Rules                   # 私人的 Rules

## 策略组介绍

    自建节点, 多用于自建 (按需修改 filter)
        Fixed-Default   # select
        Fixed-LOC       # select, Fixed-Default && geoip == LOC
    最快节点, 多用于机场 (按需增加地理位置)
        Fastest-*       # url-test
    应用 (通常需要特殊地理位置的节点)
        OpenAI          # fallback, 优先 Fixed-US, 其次 Fastest-US
    其他
        Fallback        # select, 默认方案, Proxy 或 DIRECT
