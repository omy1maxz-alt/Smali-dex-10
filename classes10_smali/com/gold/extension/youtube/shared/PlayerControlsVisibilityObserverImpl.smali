.class public final Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;
.super Ljava/lang/Object;
.source "PlayerControlsVisibilityObserver.kt"

# interfaces
.implements Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserver;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final controlButtonId:I

.field private controlButtonView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsButtonGroupId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->activity:Landroid/app/Activity;

    .line 34
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    .line 35
    const-string v1, "controls_button_group_layout"

    .line 32
    invoke-static {p1, v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Landroid/content/Context;Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->controlsButtonGroupId:I

    .line 44
    const-string v1, "player_control_play_pause_replay_button_touch_area"

    .line 41
    invoke-static {p1, v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Landroid/content/Context;Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->controlButtonId:I

    .line 50
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->controlButtonView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final isAttached()Z
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->controlButtonView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_12

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private final maybeAttach()V
    .registers 3

    .line 65
    invoke-direct {p0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_22

    .line 70
    :cond_7
    iget-object v0, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->controlsButtonGroupId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    .line 71
    iget v1, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->controlButtonId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 72
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->controlButtonView:Ljava/lang/ref/WeakReference;

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public getArePlayerControlsVisible()Z
    .registers 1

    .line 84
    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->getPlayerControlsVisibility()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public getPlayerControlsVisibility()I
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->maybeAttach()V

    .line 80
    iget-object p0, p0, Lcom/gold/extension/youtube/shared/PlayerControlsVisibilityObserverImpl;->controlButtonView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0

    :cond_12
    const/16 p0, 0x8

    return p0
.end method
