.class public Lorg/jsoup/UncheckedIOException;
.super Ljava/lang/RuntimeException;
.source "UncheckedIOException.java"


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public ioException()Ljava/io/IOException;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method
