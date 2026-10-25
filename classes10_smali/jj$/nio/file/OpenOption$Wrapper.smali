.class public final synthetic Ljj$/nio/file/OpenOption$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/OpenOption;


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/OpenOption;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/OpenOption;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/OpenOption$Wrapper;->wrappedValue:Ljj$/nio/file/OpenOption;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/OpenOption;)Ljava/nio/file/OpenOption;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/OpenOption$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/OpenOption$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/OpenOption$VivifiedWrapper;->wrappedValue:Ljava/nio/file/OpenOption;

    return-object p0

    :cond_d
    instance-of v0, p0, Ljj$/nio/file/LinkOption;

    if-eqz v0, :cond_18

    check-cast p0, Ljj$/nio/file/LinkOption;

    invoke-static {p0}, Ljj$/nio/file/LinkOption$EnumConversion;->convert(Ljj$/nio/file/LinkOption;)Ljava/nio/file/LinkOption;

    move-result-object p0

    return-object p0

    :cond_18
    instance-of v0, p0, Ljj$/nio/file/StandardOpenOption;

    if-eqz v0, :cond_23

    check-cast p0, Ljj$/nio/file/StandardOpenOption;

    invoke-static {p0}, Ljj$/nio/file/StandardOpenOption$EnumConversion;->convert(Ljj$/nio/file/StandardOpenOption;)Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_23
    new-instance v0, Ljj$/nio/file/OpenOption$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/OpenOption$Wrapper;-><init>(Ljj$/nio/file/OpenOption;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/OpenOption$Wrapper;->wrappedValue:Ljj$/nio/file/OpenOption;

    instance-of v1, p1, Ljj$/nio/file/OpenOption$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/OpenOption$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/OpenOption$Wrapper;->wrappedValue:Ljj$/nio/file/OpenOption;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/OpenOption$Wrapper;->wrappedValue:Ljj$/nio/file/OpenOption;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
