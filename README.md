# 南臺科技大學/國立雲林科技大學 Autoware 專案

本專案乃是臺灣智慧駕駛與國立臺灣大學合作完成，旨在於推廣 Autoware 自駕
車輛平臺與落實自動駕駛教育。本目錄提供教材所使用 Autoware 修訂版本。

## 環境要求

- Ubuntu 22.04 作業系統

    若使用 AGX Orin，請安裝 JetPack 6 最新版本（L4T 36.3）。

- ROS Humble，安裝教學請參考[本頁面](https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debs.html)。

- 適用 Autoware 環境設定，設定流程請參考[官方教學文件](https://autowarefoundation.github.io/autoware-documentation/pr-602/installation/autoware/source-installation/)。

- Arena SDK，用於提供 LUCID 相機驅動程式。

    請點選連結下載 deb 套件：
    - [amd64](data/ArenaSDK/amd64/arena-sdk_0.1.91-1_amd64.deb) 適合一般筆電、桌電或工作站。
    - [arm64](data/ArenaSDK/arm64/arena-sdk_0.1.73-1_arm64.deb) 適合 AGX Orin 或其他嵌入式平臺。

    然後安裝套件到系統上，例如
    ```sh
    dpkg -i arena-sdk_0.1.91-1_amd64.deb  # 請根據實際檔名修改
    ```


## 安裝流程

請按照[本
文
](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
在 GitHub 註冊 SSH key，完成後使用下面指令下載本專案原始碼。

```sh
git clone --recursive https://github.com/yenchung-turing/awf_stust.git
cd awf_stust
```

編譯本專案。

```sh
make prepare
make build
```

## 執行流程

使用以下指令即可啟動自駕程式，啟動時間需要一到兩分鐘。

```sh
make launch
```

## 版權協議

本專案為 Autoware 基金會與臺灣智慧駕駛股份有限公司共同開發，除了部分套
件為臺灣智慧駕駛股份有限公司所有，其他 Autoware 基金會提供之套件皆為
Apache License 2.0 授權。
