.class Ljj$/nio/file/Files$1;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# instance fields
.field final synthetic val$matcher:Ljj$/nio/file/PathMatcher;


# direct methods
.method constructor <init>(Ljj$/nio/file/PathMatcher;)V
    .registers 2

    iput-object p1, p0, Ljj$/nio/file/Files$1;->val$matcher:Ljj$/nio/file/PathMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljj$/nio/file/Path;

    invoke-virtual {p0, p1}, Ljj$/nio/file/Files$1;->accept(Ljj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public accept(Ljj$/nio/file/Path;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/Files$1;->val$matcher:Ljj$/nio/file/PathMatcher;

    invoke-interface {p1}, Ljj$/nio/file/Path;->getFileName()Ljj$/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/nio/file/PathMatcher;->matches(Ljj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method
