# Incompatibilities - MiuiHome on One UI 9 / Android 17

## Incompatibilidades potenciales

1. **Shared library hyperos.rustruntime.v5**
   - Declarada en manifest como `required="true"`.
   - En HyperOS es un stub vacío.
   - En One UI no existe → impide instalación como app de usuario.
   - Solución: cambiar a `required="false"` (ya probado, pero causa crash por MamlProvider).

2. **MamlProvider (com.miui.maml.MamlProvider)**
   - No presente en One UI.
   - Crash al iniciar MiuiHome como app de usuario.
   - Implementación simple (solo changeLargeIcon), se puede stubear.

3. **Permisos privilegiados**
   - `android.permission.STATUS_BAR_SERVICE`, `miui.permission.USE_INTERNAL_GENERAL_API`, `hyperos.permission.READ_AIACTION`.
   - No disponibles para apps de usuario en One UI.
   - Requieren firma de sistema o hooks LSPosed.

4. **Providers de Xiaomi**
   - LauncherProvider, CategoryProvider, HideAppProvider, etc.
   - Algunos pueden funcionar con ContentResolver estándar; otros dependen de APIs MIUI.
   - Sin el framework Xiaomi, pueden fallar en runtime.

5. **Quickstep / gestos de navegación**
   - MiuiHome se integra con `android.intent.action.QUICKSTEP_SERVICE`.
   - One UI tiene su propio quickstep; puede haber conflicto.

6. **Framework de animaciones (FRB)**
   - libresources_frb.so puede depender de servicios gráficos de HyperOS.
   - Posible incompatibilidad con SurfaceFlinger de One UI.

## Clasificación
- CRÍTICA: hyperos.rustruntime.v5, MamlProvider, STATUS_BAR_SERVICE
- IMPORTANTE: Providers Xiaomi, Quickstep
- OPCIONAL: Animaciones FRB, Mi Cloud backup
- PRIVILEGIADA: STATUS_BAR_SERVICE, USE_INTERNAL_GENERAL_API, READ_AIACTION
- DESCONOCIDA: Integración exacta con One UI SystemUI (no comprobado)
