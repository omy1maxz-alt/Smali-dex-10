.class public final synthetic Ljj$/nio/file/Watchable$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/Watchable;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/Watchable;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/Watchable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/Watchable$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Watchable;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/Watchable;)Ljj$/nio/file/Watchable;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/Watchable$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/Watchable$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/Watchable$Wrapper;->wrappedValue:Ljj$/nio/file/Watchable;

    return-object p0

    :cond_d
    instance-of v0, p0, Ljava/nio/file/Path;

    if-eqz v0, :cond_18

    check-cast p0, Ljava/nio/file/Path;

    invoke-static {p0}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance v0, Ljj$/nio/file/Watchable$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/Watchable$VivifiedWrapper;-><init>(Ljava/nio/file/Watchable;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/Watchable$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Watchable;

    instance-of v1, p1, Ljj$/nio/file/Watchable$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/Watchable$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/Watchable$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Watchable;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Watchable$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Watchable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic register(Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;)Ljj$/nio/file/WatchKey;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/Watchable$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Watchable;

    invoke-static {p1}, Ljj$/nio/file/WatchService$Wrapper;->convert(Ljj$/nio/file/WatchService;)Ljava/nio/file/WatchService;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion4;->m([Ljj$/nio/file/WatchEvent$Kind;)[Ljava/nio/file/WatchEvent$Kind;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/nio/file/Watchable;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/WatchKey$VivifiedWrapper;->convert(Ljava/nio/file/WatchKey;)Ljj$/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method

.method public synthetic register(Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;[Ljj$/nio/file/WatchEvent$Modifier;)Ljj$/nio/file/WatchKey;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/Watchable$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Watchable;

    invoke-static {p1}, Ljj$/nio/file/WatchService$Wrapper;->convert(Ljj$/nio/file/WatchService;)Ljava/nio/file/WatchService;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion4;->m([Ljj$/nio/file/WatchEvent$Kind;)[Ljava/nio/file/WatchEvent$Kind;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion5;->m([Ljj$/nio/file/WatchEvent$Modifier;)[Ljava/nio/file/WatchEvent$Modifier;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Ljava/nio/file/Watchable;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/WatchKey$VivifiedWrapper;->convert(Ljava/nio/file/WatchKey;)Ljj$/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method
