# HyperOSCompat

Entorno de desarrollo para adaptar componentes de HyperOS (MiuiHome) sobre One UI 9 (Samsung Galaxy S23).

## Herramientas requeridas
- Java JDK 21
- Android SDK + Platform Tools (adb)
- APKTool 2.11.0
- JADX 1.5.6
- Python 3.14
- Git

## Uso rápido
1. Coloca APKs originales en `apks/original/`.
2. Descompila: `scripts/decompile/decompile_apk.sh apks/original/app.apk decompiled/miuihome`
3. Analiza con JADX: `scripts/decompile/jadx_analyze.sh apks/original/app.apk decompiled/jadx`
4. Extrae componentes: `scripts/decompile/extract_components.sh decompiled/miuihome`
5. Recompila: `scripts/build/recompile.sh decompiled/miuihome builds/debug/app.apk`
6. Firma: `scripts/build/sign.sh builds/debug/app.apk`
7. Instala: `scripts/install/install_apk.sh builds/debug/app.apk`

## Seguridad
- No modificar /system, /vendor, /product, /system_ext.
- No ejecutar exploits.
- Todo el trabajo es en la computadora.
