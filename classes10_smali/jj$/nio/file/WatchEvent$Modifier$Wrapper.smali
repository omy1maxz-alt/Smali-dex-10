.class public final synthetic Ljj$/nio/file/WatchEvent$Modifier$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/WatchEvent$Modifier;


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/WatchEvent$Modifier;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/WatchEvent$Modifier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/WatchEvent$Modifier$Wrapper;->wrappedValue:Ljj$/nio/file/WatchEvent$Modifier;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchEvent$Modifier;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/WatchEvent$Modifier$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/WatchEvent$Modifier$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/WatchEvent$Modifier$VivifiedWrapper;->wrappedValue:Ljava/nio/file/WatchEvent$Modifier;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/WatchEvent$Modifier$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/WatchEvent$Modifier$Wrapper;-><init>(Ljj$/nio/file/WatchEvent$Modifier;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/WatchEvent$Modifier$Wrapper;->wrappedValue:Ljj$/nio/file/WatchEvent$Modifier;

    instance-of v1, p1, Ljj$/nio/file/WatchEvent$Modifier$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/WatchEvent$Modifier$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/WatchEvent$Modifier$Wrapper;->wrappedValue:Ljj$/nio/file/WatchEvent$Modifier;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/WatchEvent$Modifier$Wrapper;->wrappedValue:Ljj$/nio/file/WatchEvent$Modifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/WatchEvent$Modifier$Wrapper;->wrappedValue:Ljj$/nio/file/WatchEvent$Modifier;

    invoke-interface {v0}, Ljj$/nio/file/WatchEvent$Modifier;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
