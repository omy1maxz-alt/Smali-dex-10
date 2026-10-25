.class public final synthetic Ljj$/nio/file/WatchService$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/WatchService;


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/WatchService;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/WatchService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/WatchService$Wrapper;->wrappedValue:Ljj$/nio/file/WatchService;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/WatchService;)Ljava/nio/file/WatchService;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/WatchService$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/WatchService$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/WatchService$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchService;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/WatchService$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/WatchService$Wrapper;-><init>(Ljj$/nio/file/WatchService;)V

    return-object v0
.end method


# virtual methods
.method public synthetic close()V
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/WatchService$Wrapper;->wrappedValue:Ljj$/nio/file/WatchService;

    invoke-interface {v0}, Ljj$/nio/file/WatchService;->close()V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/WatchService$Wrapper;->wrappedValue:Ljj$/nio/file/WatchService;

    instance-of v1, p1, Ljj$/nio/file/WatchService$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/WatchService$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/WatchService$Wrapper;->wrappedValue:Ljj$/nio/file/WatchService;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/WatchService$Wrapper;->wrappedValue:Ljj$/nio/file/WatchService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic poll()Ljava/nio/file/WatchKey;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/WatchService$Wrapper;->wrappedValue:Ljj$/nio/file/WatchService;

    invoke-interface {v0}, Ljj$/nio/file/WatchService;->poll()Ljj$/nio/file/WatchKey;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/WatchKey$Wrapper;->convert(Ljj$/nio/file/WatchKey;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/WatchKey;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/WatchService$Wrapper;->wrappedValue:Ljj$/nio/file/WatchService;

    invoke-interface {v0, p1, p2, p3}, Ljj$/nio/file/WatchService;->poll(JLjava/util/concurrent/TimeUnit;)Ljj$/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/WatchKey$Wrapper;->convert(Ljj$/nio/file/WatchKey;)Ljava/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method

.method public synthetic take()Ljava/nio/file/WatchKey;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/WatchService$Wrapper;->wrappedValue:Ljj$/nio/file/WatchService;

    invoke-interface {v0}, Ljj$/nio/file/WatchService;->take()Ljj$/nio/file/WatchKey;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/WatchKey$Wrapper;->convert(Ljj$/nio/file/WatchKey;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method
