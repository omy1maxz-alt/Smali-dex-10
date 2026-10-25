.class public final Lcom/gold/extension/youtube/swipecontrols/misc/PointKt;
.super Ljava/lang/Object;
.source "Point.kt"


# direct methods
.method public static final toPoint(Landroid/view/MotionEvent;)Lcom/gold/extension/youtube/swipecontrols/misc/Point;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Point;-><init>(II)V

    return-object v0
.end method
