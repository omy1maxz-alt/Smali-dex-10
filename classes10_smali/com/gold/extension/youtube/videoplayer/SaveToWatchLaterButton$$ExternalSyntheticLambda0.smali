.class public final synthetic Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/videoplayer/SaveToWatchLaterButton;->$r8$lambda$RWCSyeaHzRULvfphKre6SJQzAX0(Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
