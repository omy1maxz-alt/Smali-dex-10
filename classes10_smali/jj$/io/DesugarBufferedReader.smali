.class public final synthetic Ljj$/io/DesugarBufferedReader;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lines(Ljava/io/BufferedReader;)Ljj$/util/stream/Stream;
    .registers 4

    new-instance v0, Ljj$/io/DesugarBufferedReaderLinesIterator;

    invoke-direct {v0, p0}, Ljj$/io/DesugarBufferedReaderLinesIterator;-><init>(Ljava/io/BufferedReader;)V

    const/16 v1, 0x110

    invoke-static {v0, v1}, Ljj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljj$/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method
