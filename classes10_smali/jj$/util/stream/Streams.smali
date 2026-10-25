.class final Ljj$/util/stream/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Error;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Ljj$/util/stream/Streams$1;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/Streams$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static composedClose(Ljj$/util/stream/BaseStream;Ljj$/util/stream/BaseStream;)Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Ljj$/util/stream/Streams$2;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/Streams$2;-><init>(Ljj$/util/stream/BaseStream;Ljj$/util/stream/BaseStream;)V

    return-object v0
.end method
