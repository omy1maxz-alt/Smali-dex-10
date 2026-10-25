.class Lcom/gold/extension/youtube/patches/AddToQueuePatch$1;
.super Ljava/lang/Object;
.source "AddToQueuePatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/AddToQueuePatch;->runFlyoutPanelVisibilityHandler(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$flyoutObject:Ljava/lang/Object;

.field final synthetic val$visibilityHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$TjhVLnS7Cfkx1QlLftal9DXcfc8()V
    .registers 1

    .line 150
    const-string v0, ""

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->-$$Nest$sfputflyoutVideoId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$1;->val$flyoutObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$1;->val$visibilityHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$1;->val$flyoutObject:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/app/Dialog;

    .line 137
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_19

    .line 138
    :cond_d
    instance-of v1, v0, Landroid/widget/PopupWindow;

    if-eqz v1, :cond_18

    check-cast v0, Landroid/widget/PopupWindow;

    .line 139
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_23

    .line 145
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$1;->val$visibilityHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 149
    :cond_23
    new-instance p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$1$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$1$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
