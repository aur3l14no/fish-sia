# Welcome to Fish SIA

Fish's Scientific Internet Access.

## Project layout

    mkdocs.yml    # The configuration file.
    Rules/
        *.list    # rule-set / domain-set
        ...       # Other markdown pages, images and other files.
    Scripts/

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
