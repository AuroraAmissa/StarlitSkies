{ ... }:

{
    distArcName = "Starlit Skies";
    sourceArcName = "StarlitSkiesSources";

    buildScripts = ''
        mkdir -p /build/out/"Character Sheets"

        # Starlit Skies
        render_pdf Book_StarlitSkies "" "Starlit Skies$FILE_VERSION_SUFFIX"
    '';
}
