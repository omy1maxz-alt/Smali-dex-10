.class public final synthetic Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/attribute/FileStoreAttributeView;


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/attribute/FileStoreAttributeView;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/attribute/FileStoreAttributeView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileStoreAttributeView;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/attribute/FileStoreAttributeView;)Ljava/nio/file/attribute/FileStoreAttributeView;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/attribute/FileStoreAttributeView$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/attribute/FileStoreAttributeView$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/attribute/FileStoreAttributeView$VivifiedWrapper;->wrappedValue:Ljava/nio/file/attribute/FileStoreAttributeView;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;-><init>(Ljj$/nio/file/attribute/FileStoreAttributeView;)V

    return-object v0
.end method


# virtual methods
.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileStoreAttributeView;

    instance-of v1, p1, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileStoreAttributeView;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileStoreAttributeView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/attribute/FileStoreAttributeView$Wrapper;->wrappedValue:Ljj$/nio/file/attribute/FileStoreAttributeView;

    invoke-interface {v0}, Ljj$/nio/file/attribute/AttributeView;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
