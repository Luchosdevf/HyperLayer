# Providers - MiuiHome

## ContentProviders declarados en AndroidManifest.xml

| Provider | Authorities | Exported | Permisos | Función | Clasificación |
|---|---|---|---|---|---|
| com.miui.home.recents.WindowVisibilityProvider | com.miui.home.gesture.enableState | true | write: com.android.launcher.permission.WRITE_SETTINGS | Visibilidad de ventanas en recientes | IMPORTANTE |
| androidx.core.content.FileProvider | com.miui.home.fileprovider | false | grantUriPermissions | Compartir archivos | OPCIONAL |
| com.miui.home.model.core.LauncherProvider | com.miui.home.launcher.settings | true | read/write: com.android.launcher.permission.READ/WRITE_SETTINGS | Settings del launcher | CRÍTICA |
| com.miui.home.model.core.CategoryProvider | com.miui.home.launcher.category | true | - | Categorías de apps | IMPORTANTE |
| com.miui.home.launcher.HideAppProvider | com.miui.home.app.hide | true | read: com.android.launcher.permission.READ_SETTINGS | Apps ocultas | IMPORTANTE |
| com.miui.home.model.core.russia.AppStatusProvider | com.miui.home.launcher.status | false | - | Estado de apps (Rusia) | OPCIONAL |
| com.miui.home.launcher.bigicon.IconSizeProvider | com.miui.home.launcher.bigicon.iconsize | true | - | Tamaño de iconos grandes | OPCIONAL |
| com.miui.maml.MamlProvider | com.miui.home.maml_provider | true | miui.permission.USE_INTERNAL_GENERAL_API | Gestión de iconos grandes (large icons) | IMPORTANTE |
| com.miui.home.launcher.SearchBarStyleDataProvider | com.miui.home.search.styleData | true | read/write: com.android.launcher.permission.READ/WRITE_SETTINGS | Estilo de barra de búsqueda | OPCIONAL |
| com.miui.home.model.core.russia.SearchWidgetReplaceProvider | com.miui.home.launcher.search | true | read: com.android.launcher.permission.READ_SETTINGS | Reemplazo widget búsqueda | OPCIONAL |
| com.miui.home.recents.AppHandleGestureProvider | com.miui.home.gesture.provider | true | write: com.android.launcher.permission.WRITE_SETTINGS | Gestos de app en recientes | IMPORTANTE |
| com.miui.home.settings.SettingsSearchProvider | com.miui.home.settings.SettingsSearchProvider | true | grantUriPermissions | Búsqueda en settings | OPCIONAL |
| com.miui.home.provider.DumpLogProvider | com.miui.home.provider.bugreport | true | com.miui.bugreport.permission.DUMP_CACHED_LOG | Logs para bugreport | OPCIONAL |
| com.miui.home.launcher.LauncherDownloadStateProvider | com.miui.home.launcher.download | true | write: com.android.launcher.permission.WRITE_SETTINGS | Estado de descargas | OPCIONAL |
| com.miui.home.launcher.WallpaperPaletteProvider | com.miui.launcher.wallpaper.palette | true | - | Paleta de wallpaper | OPCIONAL |
| com.miui.home.actionclient.AIActionProvider | com.miui.home | true | read/write: hyperos.permission.READ_AIACTION | Acciones IA (HyperOS) | IMPORTANTE |

## Providers externos referenciados
- `com.miui.maml.MamlProvider` (en MIUIThemeManager.apk) — ContentProvider pasivo, solo método `changeLargeIcon`.
- `com.miui.home.model.core.LauncherProvider` — principal, almacena settings del launcher.

## Evidencia técnica
- AndroidManifest.xml líneas con `<provider ...>`.
- MamlProvider decompilado en MIUIThemeManager (jadx): solo implementa `call()` para `changeLargeIcon`.

## Clasificación resumen
- CRÍTICA: LauncherProvider
- IMPORTANTE: WindowVisibilityProvider, CategoryProvider, HideAppProvider, MamlProvider, AppHandleGestureProvider, AIActionProvider
- OPCIONAL: FileProvider, AppStatusProvider, IconSizeProvider, SearchBarStyleDataProvider, SearchWidgetReplaceProvider, SettingsSearchProvider, DumpLogProvider, LauncherDownloadStateProvider, WallpaperPaletteProvider
- PRIVILEGIADA: AIActionProvider (hyperos.permission.READ_AIACTION), MamlProvider (miui.permission.USE_INTERNAL_GENERAL_API)
