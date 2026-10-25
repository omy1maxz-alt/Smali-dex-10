.class public Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch;
.super Ljava/lang/Object;
.source "DisableLayoutUpdatesPatch.java"


# static fields
.field private static final DISABLE_LAYOUT_UPDATES:Z

.field private static final REQUEST_HEADER_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$h98xdiqZ5ng1j23RhKWv8sjhg3Y(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Blocking: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 11
    const-string v0, "X-Youtube-Cold-Hash-Data"

    const-string v1, "X-Youtube-Hot-Hash-Data"

    const-string v2, "X-Youtube-Cold-Config-Data"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch;->REQUEST_HEADER_KEYS:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_LAYOUT_UPDATES:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch;->DISABLE_LAYOUT_UPDATES:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableLayoutUpdates(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 25
    sget-boolean v0, Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch;->DISABLE_LAYOUT_UPDATES:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch;->REQUEST_HEADER_KEYS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 26
    new-instance p1, Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 27
    const-string p0, ""

    return-object p0

    :cond_17
    return-object p1
.end method
