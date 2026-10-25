.class public interface abstract Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector;
.super Ljava/lang/Object;
.source "SwipeDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;
    }
.end annotation


# virtual methods
.method public abstract getCurrentSwipe()Lcom/gold/extension/youtube/swipecontrols/controller/gesture/core/SwipeDetector$SwipeDirection;
.end method

.method public abstract resetSwipe()V
.end method

.method public abstract submitForSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
.end method
