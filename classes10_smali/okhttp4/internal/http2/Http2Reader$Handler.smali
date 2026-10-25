.class interface abstract Lokhttp4/internal/http2/Http2Reader$Handler;
.super Ljava/lang/Object;
.source "Http2Reader.java"


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract data(ZILokin/BufferedSource;I)V
.end method

.method public abstract goAway(ILokhttp4/internal/http2/ErrorCode;Lokin/ByteString;)V
.end method

.method public abstract headers(ZIILjava/util/List;)V
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
.end method

.method public abstract rstStream(ILokhttp4/internal/http2/ErrorCode;)V
.end method

.method public abstract settings(ZLokhttp4/internal/http2/Settings;)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
