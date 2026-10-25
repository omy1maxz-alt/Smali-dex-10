.class public final synthetic Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/PathMatcher;


# instance fields
.field public final synthetic f$0:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;->f$0:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final matches(Ljj$/nio/file/Path;)Z
    .registers 3

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;->f$0:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->lambda$getPathMatcher$0(Ljava/util/regex/Pattern;Ljj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method
