.class public final synthetic Ljj$/nio/file/Path$VivifiedWrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljj$/nio/file/Path;
.implements Ljj$/lang/Iterable;


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/Path;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/Path;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/Path$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/Path$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/Path$Wrapper;->wrappedValue:Ljj$/nio/file/Path;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/Path$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/Path$VivifiedWrapper;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/PathApiFlips;->convertPath(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljj$/nio/file/Path;)I
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public synthetic endsWith(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic endsWith(Ljj$/nio/file/Path;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->endsWith(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    instance-of v1, p1, Ljj$/nio/file/Path$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/Path$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Ljj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getFileName()Ljj$/nio/file/Path;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getFileSystem()Ljj$/nio/file/FileSystem;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/FileSystem$VivifiedWrapper;->convert(Ljava/nio/file/FileSystem;)Ljj$/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getName(I)Ljj$/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getNameCount()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    return v0
.end method

.method public synthetic getParent()Ljj$/nio/file/Path;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getRoot()Ljj$/nio/file/Path;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isAbsolute()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/PathApiFlips;->flipIteratorPath(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic normalize()Ljj$/nio/file/Path;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public synthetic register(Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;)Ljj$/nio/file/WatchKey;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/WatchService$Wrapper;->convert(Ljj$/nio/file/WatchService;)Ljava/nio/file/WatchService;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion4;->m([Ljj$/nio/file/WatchEvent$Kind;)[Ljava/nio/file/WatchEvent$Kind;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/WatchKey$VivifiedWrapper;->convert(Ljava/nio/file/WatchKey;)Ljj$/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method

.method public synthetic register(Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;[Ljj$/nio/file/WatchEvent$Modifier;)Ljj$/nio/file/WatchKey;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/WatchService$Wrapper;->convert(Ljj$/nio/file/WatchService;)Ljava/nio/file/WatchService;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion4;->m([Ljj$/nio/file/WatchEvent$Kind;)[Ljava/nio/file/WatchEvent$Kind;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion5;->m([Ljj$/nio/file/WatchEvent$Modifier;)[Ljava/nio/file/WatchEvent$Modifier;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/WatchKey$VivifiedWrapper;->convert(Ljava/nio/file/WatchKey;)Ljj$/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method

.method public synthetic relativize(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic resolve(Ljava/lang/String;)Ljj$/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic resolve(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic resolveSibling(Ljava/lang/String;)Ljj$/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic resolveSibling(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/Path$VivifiedWrapper;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$VivifiedWrapper;->convert(Ljava/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic startsWith(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic startsWith(Ljj$/nio/file/Path;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic subpath(II)Ljj$/nio/file/Path;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0, p1, p2}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toAbsolutePath()Ljj$/nio/file/Path;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toRealPath([Ljj$/nio/file/LinkOption;)Ljj$/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-static {p1}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion3;->m([Ljj$/nio/file/LinkOption;)[Ljava/nio/file/LinkOption;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toUri()Ljava/net/URI;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/Path$VivifiedWrapper;->wrappedValue:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
