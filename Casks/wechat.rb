cask 'wechat' do
  version '2.3.30.18'
  sha256 '0dd590a1b4f480b72e8dc39efddc454ad7c1fe6d8472f338056f1c98f7c252dd'

  url 'https://dldir1.qq.com/weixin/mac/WeChatMac.dmg'
  appcast 'https://dldir1.qq.com/weixin/mac/mac-release.xml'
  name 'WeChat for Mac'
  name '微信 Mac 版'
  homepage 'https://mac.weixin.qq.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'WeChat.app'

  uninstall quit: 'com.tencent.xinWeChat'

  zap trash: [
               '~/Library/Application Scripts/com.tencent.xinWeChat',
               '~/Library/Caches/com.tencent.xinWeChat',
               '~/Library/Containers/com.tencent.xinWeChat',
               '~/Library/Cookies/com.tencent.xinWeChat.binarycookies',
               '~/Library/Group Containers/$(TeamIdentifierPrefix)com.tencent.xinWeChat',
               '~/Library/Preferences/com.tencent.xinWeChat.plist',
             ]
end
