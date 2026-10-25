.class public Ljj$/nio/channels/DesugarChannels;
.super Ljava/lang/Object;
.source "DesugarChannels.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-boolean v0, Ljj$/adapter/AndroidVersionTest;->is24OrAbove:Z

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    invoke-static {p0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel;->wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static varargs open(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 4

    sget-boolean v0, Ljj$/adapter/AndroidVersionTest;->is26OrAbove:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Ljj$/nio/channels/DesugarChannels$$ExternalSyntheticAPIConversion1;->m(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {p0, p1, p2}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel;->openEmulatedFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static varargs open(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljj$/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, p1}, Ljj$/nio/channels/DesugarChannels;->open(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method
