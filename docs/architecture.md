# Arquitectura prevista - HyperOSCompat

## Objetivo
Capa de compatibilidad visual/funcional de HyperOS sobre One UI 9, sin modificar el sistema base.

## Componentes

### Capa visual HyperOS
- MiuiHome (launcher) — adaptado.
- Overlays visuales (barra de estado, panel de control, notificaciones).
- Recursos gráficos (iconos, animaciones, layouts).

### Motor de compatibilidad
- LSPosed hooks para inyectar UI en memoria.
- Stubs de providers faltantes (MamlProvider, etc.).
- Adaptadores entre APIs Xiaomi y Samsung.

### Infraestructura Samsung (conservada)
- One UI SystemUI (barra de estado, notificaciones).
- Framework Android (WindowManager, ActivityManager).
- Kernel, drivers, servicios de hardware.

## Estrategia de desarrollo
1. Analizar dependencias de MiuiHome (completado).
2. Implementar stubs de providers críticos.
3. Usar LSPosed para hookear el launcher de One UI.
4. Construir overlays visuales para panel de control y notificaciones.
5. Integrar animaciones vía hooks.

## Restricciones
- No modificar /system, /vendor, /product, /system_ext.
- No reemplazar SystemUI ni framework.jar.
- Todo el trabajo en memoria (LSPosed) o en la app.
