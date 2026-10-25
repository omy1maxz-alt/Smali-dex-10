.class public final synthetic Ljj$/nio/file/FileStore$Wrapper;
.super Ljava/nio/file/FileStore;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/FileStore;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/FileStore;)V
    .registers 2

    invoke-direct {p0}, Ljava/nio/file/FileStore;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/FileStore;)Ljava/nio/file/FileStore;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/FileStore$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/FileStore$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/FileStore$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileStore;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/FileStore$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/FileStore$Wrapper;-><init>(Ljj$/nio/file/FileStore;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    instance-of v1, p1, Ljj$/nio/file/FileStore$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/FileStore$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljj$/nio/file/FileStore;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getBlockSize()J
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0}, Ljj$/nio/file/FileStore;->getBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getFileStoreAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileStoreAttributeView;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljj$/nio/file/FileStore;->getFileStoreAttributeView(Ljava/lang/Class;)Ljj$/nio/file/attribute/FileStoreAttributeView;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;->convert(Ljj$/nio/file/attribute/FileStoreAttributeView;)Ljava/nio/file/attribute/FileStoreAttributeView;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getTotalSpace()J
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0}, Ljj$/nio/file/FileStore;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getUnallocatedSpace()J
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0}, Ljj$/nio/file/FileStore;->getUnallocatedSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getUsableSpace()J
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0}, Ljj$/nio/file/FileStore;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isReadOnly()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0}, Ljj$/nio/file/FileStore;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0}, Ljj$/nio/file/FileStore;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic supportsFileAttributeView(Ljava/lang/Class;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-static {p1}, Ljj$/nio/file/FileApiFlips;->flipFileAttributeView(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljj$/nio/file/FileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public synthetic supportsFileAttributeView(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0, p1}, Ljj$/nio/file/FileStore;->supportsFileAttributeView(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileStore$Wrapper;->wrappedValue:Ljj$/nio/file/FileStore;

    invoke-virtual {v0}, Ljj$/nio/file/FileStore;->type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
