.class public final synthetic Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/attribute/UserDefinedFileAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/UserDefinedFileAttributeView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/UserDefinedFileAttributeView;)Ljj$/nio/file/attribute/UserDefinedFileAttributeView;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/UserDefinedFileAttributeView;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;-><init>(Ljava/nio/file/attribute/UserDefinedFileAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic delete(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    instance-of v1, p1, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic list()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1, p2}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public synthetic size(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->size(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-interface {v0, p1, p2}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
