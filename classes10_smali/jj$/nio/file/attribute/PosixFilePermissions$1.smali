.class Ljj$/nio/file/attribute/PosixFilePermissions$1;
.super Ljava/lang/Object;
.source "PosixFilePermissions.java"

# interfaces
.implements Ljj$/nio/file/attribute/FileAttribute;


# instance fields
.field final synthetic val$value:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    iput-object p1, p0, Ljj$/nio/file/attribute/PosixFilePermissions$1;->val$value:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 2

    const-string v0, "posix:permissions"

    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/attribute/PosixFilePermissions$1;->value()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/PosixFilePermissions$1;->val$value:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
