.class abstract Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# instance fields
.field private cache:Ljava/lang/ThreadLocal;

.field private final size:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    iput p1, p0, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->size:I

    return-void
.end method

.method private moveToFront([Ljava/lang/Object;I)V
    .registers 6

    aget-object v0, p1, p2

    move v1, p2

    :goto_3
    if-lez v1, :cond_e

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    aput-object v0, p1, v1

    return-void
.end method


# virtual methods
.method abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method forName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_14

    iget v1, p0, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->size:I

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_14
    const/4 v1, 0x0

    :goto_15
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    aget-object v2, v0, v1

    if-nez v2, :cond_1d

    goto :goto_29

    :cond_1d
    invoke-virtual {p0, v2, p1}, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    if-lez v1, :cond_28

    invoke-direct {p0, v0, v1}, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    :cond_28
    return-object v2

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1}, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v0, v2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v2}, Ljj$/sun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    return-object v1
.end method

.method abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
