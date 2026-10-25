.class public final Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity$Companion;
.super Ljava/lang/Object;
.source "SwipeControlsHostActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getCurrentHost$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final allowSwipeChangeVideo(Z)Z
    .registers 2

    .line 263
    sget-boolean p0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_22_OR_GREATER:Z

    if-nez p0, :cond_12

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_CHANGE_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrentHost()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->access$getCurrentHost$cp()Ljava/lang/ref/WeakReference;

    move-result-object p0

    return-object p0
.end method
