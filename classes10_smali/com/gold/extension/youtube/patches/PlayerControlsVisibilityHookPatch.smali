.class public Lcom/gold/extension/youtube/patches/PlayerControlsVisibilityHookPatch;
.super Ljava/lang/Object;
.source "PlayerControlsVisibilityHookPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPlayerControlsVisibility(Ljava/lang/Enum;)V
    .registers 1
    .param p0  # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 16
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->setFromString(Ljava/lang/String;)V

    return-void
.end method
