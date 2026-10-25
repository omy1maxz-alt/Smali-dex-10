.class public Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;
.super Ljava/lang/Object;
.source "PathApiFlips.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream;
.implements Ljj$/lang/Iterable;


# instance fields
.field private final directoryStream:Ljava/nio/file/DirectoryStream;


# direct methods
.method public constructor <init>(Ljava/nio/file/DirectoryStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;->directoryStream:Ljava/nio/file/DirectoryStream;

    return-void
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p1}, Ljj$/nio/file/PathApiFlips;->convertPath(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;->directoryStream:Ljava/nio/file/DirectoryStream;

    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;->directoryStream:Ljava/nio/file/DirectoryStream;

    new-instance v1, Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0, v1}, Ljj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Ljj$/nio/file/PathApiFlips$IteratorPathWrapper;

    iget-object v1, p0, Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;->directoryStream:Ljava/nio/file/DirectoryStream;

    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/nio/file/PathApiFlips$IteratorPathWrapper;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/PathApiFlips$DirectoryStreamPathWrapper;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-static {p0}, Ljj$/lang/Iterable$-CC;->$default$spliterator(Ljava/lang/Iterable;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
