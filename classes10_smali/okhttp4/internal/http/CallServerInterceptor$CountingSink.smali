.class final Lokhttp4/internal/http/CallServerInterceptor$CountingSink;
.super Lokin/ForwardingSink;
.source "CallServerInterceptor.java"


# instance fields
.field successfulCount:J


# direct methods
.method constructor <init>(Lokin/Sink;)V
    .registers 2

    invoke-direct {p0, p1}, Lokin/ForwardingSink;-><init>(Lokin/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lokin/Buffer;J)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lokin/ForwardingSink;->write(Lokin/Buffer;J)V

    iget-wide v0, p0, Lokhttp4/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp4/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    return-void
.end method
