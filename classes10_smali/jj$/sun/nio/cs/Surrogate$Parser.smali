.class public Ljj$/sun/nio/cs/Surrogate$Parser;
.super Ljava/lang/Object;
.source "Surrogate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private character:I

.field private error:Ljava/nio/charset/CoderResult;

.field private isPair:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/Surrogate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    return-void
.end method


# virtual methods
.method public character()I
    .registers 2

    nop

    iget v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v0
.end method

.method public error()Ljava/nio/charset/CoderResult;
    .registers 2

    nop

    iget-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method public increment()I
    .registers 2

    nop

    iget-boolean v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method public isPair()Z
    .registers 2

    nop

    iget-boolean v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    return v0
.end method

.method public parse(CLjava/nio/CharBuffer;)I
    .registers 8

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_32

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_14
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {p1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    iput v2, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->character:I

    iput-boolean v3, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    iget v1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v1

    :cond_2b
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_32
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_3f
    iput p1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->character:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    iget v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v0
.end method

.method public parse(C[CII)I
    .registers 10

    nop

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_32

    sub-int v0, p4, p3

    const/4 v4, 0x2

    if-ge v0, v4, :cond_14

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_14
    add-int/lit8 v0, p3, 0x1

    aget-char v0, p2, v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {p1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    iput v2, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->character:I

    iput-boolean v3, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    iget v1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v1

    :cond_2b
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_32
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_3f
    iput p1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->character:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    iget v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v0
.end method

.method public unmappableResult()Ljava/nio/charset/CoderResult;
    .registers 2

    nop

    iget-boolean v0, p0, Ljj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
