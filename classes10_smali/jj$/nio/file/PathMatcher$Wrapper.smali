.class public final synthetic Ljj$/nio/file/PathMatcher$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/PathMatcher;


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/PathMatcher;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/PathMatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/PathMatcher$Wrapper;->wrappedValue:Ljj$/nio/file/PathMatcher;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/PathMatcher;)Ljava/nio/file/PathMatcher;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/PathMatcher$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/PathMatcher$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/PathMatcher$VivifiedWrapper;->wrappedValue:Ljava/nio/file/PathMatcher;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/PathMatcher$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/PathMatcher$Wrapper;-><init>(Ljj$/nio/file/PathMatcher;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/PathMatcher$Wrapper;->wrappedValue:Ljj$/nio/file/PathMatcher;

    instance-of v1, p1, Ljj$/nio/file/PathMatcher$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/PathMatcher$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/PathMatcher$Wrapper;->wrappedValue:Ljj$/nio/file/PathMatcher;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/PathMatcher$Wrapper;->wrappedValue:Ljj$/nio/file/PathMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic matches(Ljava/nio/file/Path;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/PathMatcher$Wrapper;->wrappedValue:Ljj$/nio/file/PathMatcher;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljj$/nio/file/PathMatcher;->matches(Ljj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method
