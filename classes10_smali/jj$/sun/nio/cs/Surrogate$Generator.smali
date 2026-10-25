.class public Ljj$/sun/nio/cs/Surrogate$Generator;
.super Ljava/lang/Object;
.source "Surrogate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private error:Ljava/nio/charset/CoderResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/Surrogate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return-void
.end method


# virtual methods
.method public error()Ljava/nio/charset/CoderResult;
    .registers 2

    nop

    iget-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method public generate(IILjava/nio/CharBuffer;)I
    .registers 9

    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_28

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {p2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_16
    invoke-virtual {p3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_22

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_22
    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v4

    :cond_28
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_3a

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_3a
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v3

    :cond_4b
    invoke-static {p2}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v2
.end method

.method public generate(II[CII)I
    .registers 11

    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_25

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {p2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_16
    sub-int v3, p5, p4

    const/4 v4, 0x1

    if-ge v3, v4, :cond_20

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_20
    aput-char v0, p3, p4

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v4

    :cond_25
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_46

    sub-int v0, p5, p4

    const/4 v3, 0x2

    if-ge v0, v3, :cond_35

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v2

    :cond_35
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    aput-char v0, p3, p4

    add-int/lit8 v0, p4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v2

    aput-char v2, p3, v0

    iput-object v1, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v3

    :cond_46
    invoke-static {p2}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return v2
.end method
