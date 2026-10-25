.class public Lcom/gold/extension/shared/patches/DisableQUICProtocolPatch;
.super Ljava/lang/Object;
.source "DisableQUICProtocolPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableQUICProtocol(Z)Z
    .registers 2

    .line 9
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DISABLE_QUIC_PROTOCOL:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
