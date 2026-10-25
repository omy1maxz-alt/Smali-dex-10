.class public final Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;
.super Ljava/lang/Object;
.source "SwipeDetector.kt"

# interfaces
.implements Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector;


# instance fields
.field private currentSwipe:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

.field private final swipeMagnitudeThreshold:D


# direct methods
.method public constructor <init>(D)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->swipeMagnitudeThreshold:D

    .line 65
    sget-object p1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->NONE:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->currentSwipe:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    return-void
.end method


# virtual methods
.method public getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->currentSwipe:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    return-object p0
.end method

.method public resetSwipe()V
    .registers 2

    .line 92
    sget-object v0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->NONE:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    invoke-virtual {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->setCurrentSwipe(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;)V

    return-void
.end method

.method public setCurrentSwipe(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->currentSwipe:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    return-void
.end method

.method public submitForSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    move-result-object p3

    sget-object p4, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->NONE:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    if-ne p3, p4, :cond_4e

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 80
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p2, v0

    float-to-double v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p4, v0

    add-float/2addr p2, p4

    float-to-double v0, p2

    .line 81
    iget-wide v4, p0, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->swipeMagnitudeThreshold:D

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double p2, v0, v2

    if-lez p2, :cond_4e

    cmpl-float p1, p1, p3

    if-lez p1, :cond_49

    .line 83
    sget-object p1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->VERTICAL:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    goto :goto_4b

    .line 85
    :cond_49
    sget-object p1, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;->HORIZONTAL:Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;

    .line 82
    :goto_4b
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetectorImpl;->setCurrentSwipe(Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;)V

    :cond_4e
    return-void
.end method
