.class public Ljj$/nio/file/WatchEventKindConversions;
.super Ljava/lang/Object;
.source "WatchEventKindConversions.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljj$/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchEvent$Kind;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljj$/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljj$/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    return-object p0

    :cond_b
    sget-object v0, Ljj$/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljj$/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    return-object p0

    :cond_12
    sget-object v0, Ljj$/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljj$/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_19

    sget-object p0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-object p0

    :cond_19
    sget-object v0, Ljj$/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljj$/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_20

    sget-object p0, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    return-object p0

    :cond_20
    invoke-static {p0}, Ljj$/nio/file/WatchEvent$Kind$Wrapper;->convert(Ljj$/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchEvent$Kind;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/nio/file/WatchEvent$Kind;)Ljj$/nio/file/WatchEvent$Kind;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljj$/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljj$/nio/file/WatchEvent$Kind;

    return-object p0

    :cond_b
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljj$/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljj$/nio/file/WatchEvent$Kind;

    return-object p0

    :cond_12
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_19

    sget-object p0, Ljj$/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljj$/nio/file/WatchEvent$Kind;

    return-object p0

    :cond_19
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne p0, v0, :cond_20

    sget-object p0, Ljj$/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljj$/nio/file/WatchEvent$Kind;

    return-object p0

    :cond_20
    invoke-static {p0}, Ljj$/nio/file/WatchEvent$Kind$VivifiedWrapper;->convert(Ljava/nio/file/WatchEvent$Kind;)Ljj$/nio/file/WatchEvent$Kind;

    move-result-object p0

    return-object p0
.end method
