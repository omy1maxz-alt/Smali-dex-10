.class Lcom/gold/extension/youtube/patches/PlayerTypeHookPatch$1;
.super Ljava/lang/Object;
.source "PlayerTypeHookPatch.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/PlayerTypeHookPatch;->onShortsCreate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    .line 44
    invoke-static {p0}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->setOpen(Z)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    .line 49
    invoke-static {p0}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->setOpen(Z)V

    return-void
.end method
