.class final Ljj$/nio/file/attribute/FileAttributeConversions$2;
.super Ljava/lang/Object;
.source "FileAttributeConversions.java"

# interfaces
.implements Ljava/nio/file/attribute/FileAttribute;


# instance fields
.field final synthetic val$attribute:Ljj$/nio/file/attribute/FileAttribute;


# direct methods
.method constructor <init>(Ljj$/nio/file/attribute/FileAttribute;)V
    .registers 2

    iput-object p1, p0, Ljj$/nio/file/attribute/FileAttributeConversions$2;->val$attribute:Ljj$/nio/file/attribute/FileAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 2

    const-string v0, "posix:permissions"

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/FileAttributeConversions$2;->val$attribute:Ljj$/nio/file/attribute/FileAttribute;

    invoke-interface {v0}, Ljj$/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljj$/nio/file/FileApiFlips;->flipPosixPermissionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
