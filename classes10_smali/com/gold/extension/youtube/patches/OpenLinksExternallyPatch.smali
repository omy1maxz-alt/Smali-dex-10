.class public Lcom/gold/extension/youtube/patches/OpenLinksExternallyPatch;
.super Ljava/lang/Object;
.source "OpenLinksExternallyPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 14
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->EXTERNAL_BROWSER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, ""

    :cond_e
    return-object p0
.end method
