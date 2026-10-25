.class final Lokin/Okio$3;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokin/Sink;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    sget-object v0, Lokin/Timeout;->NONE:Lokin/Timeout;

    return-object v0
.end method

.method public write(Lokin/Buffer;J)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lokin/Buffer;->skip(J)V

    return-void
.end method
