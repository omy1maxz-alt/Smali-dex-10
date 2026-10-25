.class public final Lcom/gold/extension/youtube/shared/PlayerOverlays$attach$1;
.super Ljava/lang/Object;
.source "PlayerOverlays.kt"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/shared/PlayerOverlays;->attach(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 39
    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_17

    if-eqz p2, :cond_17

    .line 40
    sget-object p0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->INSTANCE:Lcom/gold/extension/youtube/shared/PlayerOverlays;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerOverlays;->getOnChildrenChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p0

    .line 41
    new-instance v0, Lcom/gold/extension/youtube/shared/ChildrenChangeEventArgs;

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, p1, p2, v1}, Lcom/gold/extension/youtube/shared/ChildrenChangeEventArgs;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/gold/extension/youtube/shared/Event;->invoke(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 51
    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_17

    if-eqz p2, :cond_17

    .line 52
    sget-object p0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->INSTANCE:Lcom/gold/extension/youtube/shared/PlayerOverlays;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerOverlays;->getOnChildrenChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p0

    .line 53
    new-instance v0, Lcom/gold/extension/youtube/shared/ChildrenChangeEventArgs;

    .line 54
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 53
    invoke-direct {v0, p1, p2, v1}, Lcom/gold/extension/youtube/shared/ChildrenChangeEventArgs;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/gold/extension/youtube/shared/Event;->invoke(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method
