.class public final Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;
.super Ljava/lang/RuntimeException;
.source "MissingBackpressureException.java"


# static fields
.field private static final serialVersionUID:J = 0x7633afeb6fd3471eL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static createDefault()Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    const-string v1, "Could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
