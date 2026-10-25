.class Ljj$/nio/file/Files$AcceptAllFilter;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# static fields
.field static final FILTER:Ljj$/nio/file/Files$AcceptAllFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/nio/file/Files$AcceptAllFilter;

    invoke-direct {v0}, Ljj$/nio/file/Files$AcceptAllFilter;-><init>()V

    sput-object v0, Ljj$/nio/file/Files$AcceptAllFilter;->FILTER:Ljj$/nio/file/Files$AcceptAllFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljj$/nio/file/Path;

    invoke-virtual {p0, p1}, Ljj$/nio/file/Files$AcceptAllFilter;->accept(Ljj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public accept(Ljj$/nio/file/Path;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
