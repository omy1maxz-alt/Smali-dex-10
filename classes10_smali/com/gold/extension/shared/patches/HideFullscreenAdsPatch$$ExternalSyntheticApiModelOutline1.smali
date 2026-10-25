.class public abstract synthetic Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticApiModelOutline1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m()I
    .registers 1

    .line 0
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    return v0
.end method
