.class public abstract Lokhttp4/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lokhttp4/MediaType;[B)Lokhttp4/RequestBody;
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lokhttp4/RequestBody;->create(Lokhttp4/MediaType;[BII)Lokhttp4/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lokhttp4/MediaType;[BII)Lokhttp4/RequestBody;
    .registers 11

    const-string v0, "content == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokhttp4/internal/Util;->checkOffsetAndCount(JJJ)V

    new-instance v0, Lokhttp4/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lokhttp4/RequestBody$2;-><init>(Lokhttp4/MediaType;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp4/MediaType;
.end method

.method public abstract writeTo(Lokin/BufferedSink;)V
.end method
