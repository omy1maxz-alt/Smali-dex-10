.class public final synthetic Ljj$/nio/file/Files$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport3;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
