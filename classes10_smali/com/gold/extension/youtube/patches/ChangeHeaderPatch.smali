.class public Lcom/gold/extension/youtube/patches/ChangeHeaderPatch;
.super Ljava/lang/Object;
.source "ChangeHeaderPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ciJFJ-4ZJV5cl8JPb-APkHTPbP4()Ljava/lang/String;
    .registers 1

    .line 104
    const-string v0, "Could not find regular header logo resource"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 89
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HEADER_LOGO:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 98
    :cond_f
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->REGULAR:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18

    return-object v0

    .line 104
    :cond_18
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p0
.end method

.method public static getHeaderAttributeId(I)I
    .registers 2

    .line 85
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HEADER_LOGO:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->-$$Nest$mgetAttributeId(Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
