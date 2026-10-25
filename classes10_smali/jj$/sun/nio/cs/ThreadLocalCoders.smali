.class public Ljj$/sun/nio/cs/ThreadLocalCoders;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# static fields
.field private static final CACHE_SIZE:I = 0x3

.field private static decoderCache:Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;

.field private static encoderCache:Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljj$/sun/nio/cs/ThreadLocalCoders$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljj$/sun/nio/cs/ThreadLocalCoders$1;-><init>(I)V

    sput-object v0, Ljj$/sun/nio/cs/ThreadLocalCoders;->decoderCache:Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;

    new-instance v0, Ljj$/sun/nio/cs/ThreadLocalCoders$2;

    invoke-direct {v0, v1}, Ljj$/sun/nio/cs/ThreadLocalCoders$2;-><init>(I)V

    sput-object v0, Ljj$/sun/nio/cs/ThreadLocalCoders;->encoderCache:Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;
    .registers 2

    sget-object v0, Ljj$/sun/nio/cs/ThreadLocalCoders;->decoderCache:Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;

    invoke-virtual {v0, p0}, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method public static encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;
    .registers 2

    sget-object v0, Ljj$/sun/nio/cs/ThreadLocalCoders;->encoderCache:Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;

    invoke-virtual {v0, p0}, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method
