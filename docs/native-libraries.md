# Native Libraries - MiuiHome

## Bibliotecas nativas (lib/arm64-v8a/)

| Librería | Función probable | Clasificación |
|---|---|---|
| libapp.so | Lógica principal del launcher (renderizado, animaciones, interacción) | CRÍTICA |
| libapp_launcher.so | Lógica específica de launcher (recientes, quickstep, transiciones) | CRÍTICA |
| libnative_widget_sdk.so | SDK de widgets nativos | IMPORTANTE |
| libresources_frb.so | Recursos/FRB (frame resources para animaciones) | IMPORTANTE |

## Dependencias JNI
- MiuiHome es una app Flutter; el código Java/Kotlin es mínimo.
- Las librerías nativas se cargan vía System.loadLibrary.
- hyperos.rustruntime.v5 es un stub (no JNI real).

## Evidencia
- `lib/` en el APK decompilado.
- AndroidManifest.xml no declara `<uses-library>` para las .so (se cargan dinámicamente).

## Incompatibilidades potenciales
- Las .so están compiladas para ARM64-v8a (compatible con S23).
- Pueden depender de símbolos del framework HyperOS no presentes en One UI.
- Sin el framework HyperOS, las librerías pueden fallar en runtime.
