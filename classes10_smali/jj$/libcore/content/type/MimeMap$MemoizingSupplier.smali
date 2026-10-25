.class final Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;
.super Ljava/lang/Object;
.source "MimeMap.java"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private volatile mDelegate:Ljava/util/function/Supplier;

.field private volatile mInitialized:Z

.field private volatile mInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->mInitialized:Z

    iput-object p1, p0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->mDelegate:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->mInitialized:Z

    if-nez v0, :cond_1c

    monitor-enter p0

    :try_start_5
    iget-boolean v0, p0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->mInitialized:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->mDelegate:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->mInstance:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->mDelegate:Ljava/util/function/Supplier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->mInitialized:Z

    :cond_17
    monitor-exit p0

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :goto_1c
    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->mInstance:Ljava/lang/Object;

    return-object v0
.end method
