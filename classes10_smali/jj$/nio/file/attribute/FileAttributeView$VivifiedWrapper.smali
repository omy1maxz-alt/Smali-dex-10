.class public final synthetic Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/attribute/FileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/FileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/FileAttributeView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/FileAttributeView;)Ljj$/nio/file/attribute/FileAttributeView;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/FileAttributeView$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/FileAttributeView$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/FileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileAttributeView;

    return-object p0

    :cond_d
    instance-of v0, p0, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-eqz v0, :cond_18

    check-cast p0, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-static {p0}, Ljj$/nio/file/attribute/BasicFileAttributeView$VivifiedWrapper;->convert(Ljava/nio/file/attribute/BasicFileAttributeView;)Ljj$/nio/file/attribute/BasicFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_18
    instance-of v0, p0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-eqz v0, :cond_23

    check-cast p0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    invoke-static {p0}, Ljj$/nio/file/attribute/FileOwnerAttributeView$VivifiedWrapper;->convert(Ljava/nio/file/attribute/FileOwnerAttributeView;)Ljj$/nio/file/attribute/FileOwnerAttributeView;

    move-result-object p0

    return-object p0

    :cond_23
    instance-of v0, p0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    if-eqz v0, :cond_2e

    check-cast p0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-static {p0}, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->convert(Ljava/nio/file/attribute/UserDefinedFileAttributeView;)Ljj$/nio/file/attribute/UserDefinedFileAttributeView;

    move-result-object p0

    return-object p0

    :cond_2e
    new-instance v0, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/FileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileAttributeView;

    instance-of v1, p1, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileAttributeView;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/AttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
