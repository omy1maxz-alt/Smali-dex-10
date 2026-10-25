.class Lcom/gold/extension/youtube/patches/components/CommentsFilter$1;
.super Ljava/lang/Object;
.source "CommentsFilter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/components/CommentsFilter;->hideLiveChatDonatorsBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/components/CommentsFilter$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/components/CommentsFilter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 266
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/CommentsFilter$1;->val$view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1a

    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    const/16 v0, 0x8

    .line 267
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    return-void
.end method
