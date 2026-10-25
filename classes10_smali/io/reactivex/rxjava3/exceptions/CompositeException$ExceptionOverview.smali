.class final Lio/reactivex/rxjava3/exceptions/CompositeException$ExceptionOverview;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# static fields
.field private static final serialVersionUID:J = 0x35c7853e403cebd2L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
