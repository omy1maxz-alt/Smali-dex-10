.class public Lcom/gold/youtube/om7753/util/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# direct methods
.method public static getDialogTheme(Landroid/content/Context;)I
    .registers 1

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "DarkDialogTheme"

    goto :goto_b

    :cond_9
    const-string p0, "LightDialogTheme"

    :goto_b
    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Utils;->getStyleByName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDownTheme(Landroid/content/Context;)I
    .registers 1

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "DarkTheme"

    goto :goto_b

    :cond_9
    const-string p0, "LightTheme"

    :goto_b
    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Utils;->getStyleByName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getFpickTheme(Landroid/content/Context;)I
    .registers 1

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "FilePickerThemeDark"

    goto :goto_b

    :cond_9
    const-string p0, "FilePickerThemeLight"

    :goto_b
    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Utils;->getStyleByName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static resolveResourceIdFromAttr(Landroid/content/Context;I)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static setActivityTheme(Landroid/app/Activity;)V
    .registers 3

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Theme.YouTube.Settings.Dark"

    goto :goto_b

    :cond_9
    const-string v0, "Theme.YouTube.Settings"

    :goto_b
    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStyleByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method
