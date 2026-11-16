# Services - MiuiHome

## Services declarados en AndroidManifest.xml

| Service | Exported | Permisos | Función | Clasificación |
|---|---|---|---|---|
| com.rust.hyper_launcher.recents.TouchInteractionService | true | android.permission.STATUS_BAR_SERVICE | Interacción táctil en recientes (gestos) | CRÍTICA |
| com.miui.home.launcher.cloudbackup.BackupRestoreHomeService | true | miui.permission.USE_INTERNAL_GENERAL_API | Backup/restauración de layout en nube | IMPORTANTE |
| com.miui.home.isolate.provision.SetupWizardCompletedService | true | com.miui.home.permission.SETUP_WIZARD_COMPLETED | Provisionamiento post-setup | OPCIONAL |
| com.miui.home.miclaw.LauncherToolService | true | - | Herramientas del launcher (Mi Claw) | IMPORTANTE |
| androidx.appfunctions.service.PlatformAppFunctionService | - | android.permission.BIND_APP_FUNCTION_SERVICE | Funciones de app (AndroidX) | OPCIONAL |
| android.app.appfunctions.AppFunctionService | - | - | Funciones de app (framework) | OPCIONAL |

## Servicios referenciados (externos)
- `com.android.systemui.fsgesture.*` (actividades de gestos) — SystemUI de Android.
- `com.miui.home.miclaw.LauncherToolService` — integración con asistente IA.

## Evidencia
- AndroidManifest.xml líneas `<service ...>`.
- TouchInteractionService requiere STATUS_BAR_SERVICE (PRIVILEGIADA).

## Clasificación
- CRÍTICA: TouchInteractionService (gestos de navegación)
- IMPORTANTE: BackupRestoreHomeService, LauncherToolService
- OPCIONAL: SetupWizardCompletedService, PlatformAppFunctionService, AppFunctionService
- PRIVILEGIADA: TouchInteractionService (STATUS_BAR_SERVICE)
