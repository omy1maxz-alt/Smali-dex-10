.class public final synthetic Ljj$/io/FileRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic toPath(Ljava/io/File;)Ljj$/nio/file/Path;
    .registers 2

    instance-of v0, p0, Ljj$/io/FileRetargetInterface;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/io/FileRetargetInterface;

    invoke-interface {p0}, Ljj$/io/FileRetargetInterface;->toPath()Ljj$/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/io/DesugarFile;->toPath(Ljava/io/File;)Ljj$/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
