# Mapa de dependencias - MiuiHome

## Librerías nativas (lib/arm64-v8a/)
- libapp.so
- libapp_launcher.so
- libnative_widget_sdk.so
- libresources_frb.so

## Shared libraries declaradas
- hyperos.rustruntime.v5 (stub vacío: rust.core.runtime.Empty)

## Providers externos esperados
- com.miui.maml.MamlProvider (en MIUIThemeManager.apk)
- com.miui.home.recents.WindowVisibilityProvider
- com.miui.home.model.core.LauncherProvider
- com.miui.home.model.core.CategoryProvider
- com.miui.home.launcher.HideAppProvider
- com.miui.home.model.core.russia.AppStatusProvider
- com.miui.home.launcher.bigicon.IconSizeProvider
- com.miui.home.launcher.SearchBarStyleDataProvider
- com.miui.home.model.core.russia.SearchWidgetReplaceProvider
- com.miui.home.recents.AppHandleGestureProvider
- com.miui.home.settings.SettingsSearchProvider
- com.miui.home.provider.DumpLogProvider
- com.miui.home.launcher.LauncherDownloadStateProvider
- com.miui.home.launcher.WallpaperPaletteProvider
- com.miui.home.actionclient.AIActionProvider

## Services
- com.rust.hyper_launcher.recents.TouchInteractionService
- com.miui.home.launcher.cloudbackup.BackupRestoreHomeService
- com.miui.home.isolate.provision.SetupWizardCompletedService
- com.miui.home.miclaw.LauncherToolService
- androidx.appfunctions.service.PlatformAppFunctionService
- android.app.appfunctions.AppFunctionService

## Receivers
- com.miui.home.launcher.InstallShortcutReceiver
- com.miui.home.launcher.MiShowReceiver
- com.miui.home.launcher.IconReorganizeMonitor
- com.miui.home.launcher.InstallWidgetReceiver
- com.miui.home.launcher.UninstallShortcutReceiver
- com.miui.home.launcher.UninstallWidgetReceiver

## Permisos críticos
- android.permission.STATUS_BAR_SERVICE
- android.permission.FOREGROUND_SERVICE / FOREGROUND_SERVICE_SPECIAL_USE
- miui.permission.USE_INTERNAL_GENERAL_API
- com.android.launcher.permission.READ/WRITE_SETTINGS
- com.miui.home.launcher.permission.INSTALL/UNINSTALL_WIDGET
- hyperos.permission.READ_AIACTION

## Notas
- MiuiHome es una app Flutter con código nativo en libapp.so.
- MamlProvider es un ContentProvider pasivo (solo changeLargeIcon).
- hyperos.rustruntime.v5 es un stub vacío.
- Para funcionar como app de usuario, faltan clases del framework HyperOS.
