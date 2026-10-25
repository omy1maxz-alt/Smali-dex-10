.class public Lcom/gold/extension/youtube/patches/PlayerTypeHookPatch;
.super Ljava/lang/Object;
.source "PlayerTypeHookPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onShortsCreate(Landroid/view/View;)V
    .registers 2

    .line 41
    new-instance v0, Lcom/gold/extension/youtube/patches/PlayerTypeHookPatch$1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/PlayerTypeHookPatch$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public static setPlayerType(Ljava/lang/Enum;)V
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

    .line 20
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/shared/PlayerType;->setFromString(Ljava/lang/String;)V

    return-void
.end method

.method public static setVideoState(Ljava/lang/Enum;)V
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

    .line 29
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/shared/VideoState;->setFromString(Ljava/lang/String;)V

    return-void
.end method
