.class final Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory$RxCustomThread;
.super Ljava/lang/Thread;
.source "RxThreadFactory.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/schedulers/NonBlockingThread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
