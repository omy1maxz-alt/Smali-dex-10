.class public Lcom/gold/extension/youtube/patches/BypassLinkRedirectsPatch;
.super Ljava/lang/Object;
.source "BypassLinkRedirectsPatch.java"


# direct methods
.method public static synthetic $r8$lambda$e77o80LjyLyj168QdXPQyc4S1qw(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bypassing YouTube redirect URI: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseRedirectUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    .line 20
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->BYPASS_LINK_REDIRECTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/redirect"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 21
    const-string v0, "q"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 24
    new-instance v0, Lcom/gold/extension/youtube/patches/BypassLinkRedirectsPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/BypassLinkRedirectsPatch$$ExternalSyntheticLambda0;-><init>(Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_2c
    return-object p0
.end method
