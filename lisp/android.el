;; Android SDK mode
(vendor 'android-mode)

(setq android-mode-sdk-dir '/opt/android-sdk-linux)
(if (getenv "ANDROID_SDK")
    (setq android-mode-sdk-dir (getenv "ANDROID_SDK")) )
