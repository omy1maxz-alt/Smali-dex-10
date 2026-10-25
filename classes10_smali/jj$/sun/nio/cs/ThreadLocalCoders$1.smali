.class Ljj$/sun/nio/cs/ThreadLocalCoders$1;
.super Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;
.source "ThreadLocalCoders.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/ThreadLocalCoders;

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;-><init>(I)V

    return-void
.end method


# virtual methods
.method create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0

    :cond_c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0

    :cond_1c
    nop

    const/4 v0, 0x0

    return-object v0
.end method

.method hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p2, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_10
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method
