.class public final synthetic Ljj$/nio/channels/DesugarFileChannel$$ExternalSyntheticAPIConversion0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 3

    invoke-static {p0}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p1}, Ljj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/channels/DesugarChannels$$ExternalSynthetic$CollectionConversion0;->m([Ljj$/nio/file/attribute/FileAttribute;)[Ljava/nio/file/attribute/FileAttribute;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method
