.class public final synthetic Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController$WhenMappings;
.super Ljava/lang/Object;
.source "ClassicSwipeController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->values()[Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->VERTICAL:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->HORIZONTAL:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/ClassicSwipeController$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
