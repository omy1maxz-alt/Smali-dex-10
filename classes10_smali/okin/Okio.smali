.class public final Lokin/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lokin/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokin/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lokin/Sink;
    .registers 3

    if-eqz p0, :cond_d

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lokin/Okio;->sink(Ljava/io/OutputStream;)Lokin/Sink;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blackhole()Lokin/Sink;
    .registers 1

    new-instance v0, Lokin/Okio$3;

    invoke-direct {v0}, Lokin/Okio$3;-><init>()V

    return-object v0
.end method

.method public static buffer(Lokin/Sink;)Lokin/BufferedSink;
    .registers 2

    new-instance v0, Lokin/RealBufferedSink;

    invoke-direct {v0, p0}, Lokin/RealBufferedSink;-><init>(Lokin/Sink;)V

    return-object v0
.end method

.method public static buffer(Lokin/Source;)Lokin/BufferedSource;
    .registers 2

    new-instance v0, Lokin/RealBufferedSource;

    invoke-direct {v0, p0}, Lokin/RealBufferedSource;-><init>(Lokin/Source;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static sink(Ljava/io/File;)Lokin/Sink;
    .registers 2

    if-eqz p0, :cond_c

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokin/Okio;->sink(Ljava/io/OutputStream;)Lokin/Sink;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/io/OutputStream;)Lokin/Sink;
    .registers 2

    new-instance v0, Lokin/Timeout;

    invoke-direct {v0}, Lokin/Timeout;-><init>()V

    invoke-static {p0, v0}, Lokin/Okio;->sink(Ljava/io/OutputStream;Lokin/Timeout;)Lokin/Sink;

    move-result-object p0

    return-object p0
.end method

.method private static sink(Ljava/io/OutputStream;Lokin/Timeout;)Lokin/Sink;
    .registers 3

    if-eqz p0, :cond_13

    if-eqz p1, :cond_a

    new-instance v0, Lokin/Okio$1;

    invoke-direct {v0, p1, p0}, Lokin/Okio$1;-><init>(Lokin/Timeout;Ljava/io/OutputStream;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/net/Socket;)Lokin/Sink;
    .registers 2

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lokin/Okio;->timeout(Ljava/net/Socket;)Lokin/AsyncTimeout;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lokin/Okio;->sink(Ljava/io/OutputStream;Lokin/Timeout;)Lokin/Sink;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokin/AsyncTimeout;->sink(Lokin/Sink;)Lokin/Sink;

    move-result-object p0

    return-object p0

    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/File;)Lokin/Source;
    .registers 2

    if-eqz p0, :cond_c

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokin/Okio;->source(Ljava/io/InputStream;)Lokin/Source;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/InputStream;)Lokin/Source;
    .registers 2

    new-instance v0, Lokin/Timeout;

    invoke-direct {v0}, Lokin/Timeout;-><init>()V

    invoke-static {p0, v0}, Lokin/Okio;->source(Ljava/io/InputStream;Lokin/Timeout;)Lokin/Source;

    move-result-object p0

    return-object p0
.end method

.method private static source(Ljava/io/InputStream;Lokin/Timeout;)Lokin/Source;
    .registers 3

    if-eqz p0, :cond_13

    if-eqz p1, :cond_a

    new-instance v0, Lokin/Okio$2;

    invoke-direct {v0, p1, p0}, Lokin/Okio$2;-><init>(Lokin/Timeout;Ljava/io/InputStream;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/net/Socket;)Lokin/Source;
    .registers 2

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lokin/Okio;->timeout(Ljava/net/Socket;)Lokin/AsyncTimeout;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lokin/Okio;->source(Ljava/io/InputStream;Lokin/Timeout;)Lokin/Source;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokin/AsyncTimeout;->source(Lokin/Source;)Lokin/Source;

    move-result-object p0

    return-object p0

    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static timeout(Ljava/net/Socket;)Lokin/AsyncTimeout;
    .registers 2

    new-instance v0, Lokin/Okio$4;

    invoke-direct {v0, p0}, Lokin/Okio$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
