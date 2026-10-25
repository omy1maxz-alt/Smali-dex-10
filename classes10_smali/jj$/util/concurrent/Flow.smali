.class public final Ljj$/util/concurrent/Flow;
.super Ljava/lang/Object;
.source "Flow.java"


# static fields
.field static final DEFAULT_BUFFER_SIZE:I = 0x100


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultBufferSize()I
    .registers 1

    const/16 v0, 0x100

    return v0
.end method
