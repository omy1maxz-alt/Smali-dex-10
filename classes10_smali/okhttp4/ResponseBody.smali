.class public abstract Lokhttp4/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .registers 3

    invoke-virtual {p0}, Lokhttp4/ResponseBody;->contentType()Lokhttp4/MediaType;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lokhttp4/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lokhttp4/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Lokhttp4/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    :goto_f
    return-object v0
.end method

.method public static create(Lokhttp4/MediaType;JLokin/BufferedSource;)Lokhttp4/ResponseBody;
    .registers 5

    const-string/jumbo v0, "source == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lokhttp4/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lokhttp4/ResponseBody$1;-><init>(Lokhttp4/MediaType;JLokin/BufferedSource;)V

    return-object v0
.end method

.method public static create(Lokhttp4/MediaType;[B)Lokhttp4/ResponseBody;
    .registers 5

    new-instance v0, Lokin/Buffer;

    invoke-direct {v0}, Lokin/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokin/Buffer;->write([B)Lokin/Buffer;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lokhttp4/ResponseBody;->create(Lokhttp4/MediaType;JLokin/BufferedSource;)Lokhttp4/ResponseBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-virtual {p0}, Lokhttp4/ResponseBody;->source()Lokin/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp4/MediaType;
.end method

.method public abstract source()Lokin/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lokhttp4/ResponseBody;->source()Lokin/BufferedSource;

    move-result-object v0

    :try_start_4
    invoke-direct {p0}, Lokhttp4/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp4/internal/Util;->bomAwareCharset(Lokin/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lokin/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_14
    move-exception v1

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method
