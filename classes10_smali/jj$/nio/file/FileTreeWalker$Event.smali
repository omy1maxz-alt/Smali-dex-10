.class Ljj$/nio/file/FileTreeWalker$Event;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"


# instance fields
.field private final attrs:Ljj$/nio/file/attribute/BasicFileAttributes;

.field private final file:Ljj$/nio/file/Path;

.field private final ioe:Ljava/io/IOException;

.field private final type:Ljj$/nio/file/FileTreeWalker$EventType;


# direct methods
.method constructor <init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljava/io/IOException;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Ljj$/nio/file/FileTreeWalker$Event;-><init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljj$/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V

    return-void
.end method

.method constructor <init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljj$/nio/file/attribute/BasicFileAttributes;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljj$/nio/file/FileTreeWalker$Event;-><init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljj$/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V

    return-void
.end method

.method private constructor <init>(Ljj$/nio/file/FileTreeWalker$EventType;Ljj$/nio/file/Path;Ljj$/nio/file/attribute/BasicFileAttributes;Ljava/io/IOException;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/FileTreeWalker$Event;->type:Ljj$/nio/file/FileTreeWalker$EventType;

    iput-object p2, p0, Ljj$/nio/file/FileTreeWalker$Event;->file:Ljj$/nio/file/Path;

    iput-object p3, p0, Ljj$/nio/file/FileTreeWalker$Event;->attrs:Ljj$/nio/file/attribute/BasicFileAttributes;

    iput-object p4, p0, Ljj$/nio/file/FileTreeWalker$Event;->ioe:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method attributes()Ljj$/nio/file/attribute/BasicFileAttributes;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker$Event;->attrs:Ljj$/nio/file/attribute/BasicFileAttributes;

    return-object v0
.end method

.method file()Ljj$/nio/file/Path;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker$Event;->file:Ljj$/nio/file/Path;

    return-object v0
.end method

.method ioeException()Ljava/io/IOException;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker$Event;->ioe:Ljava/io/IOException;

    return-object v0
.end method

.method type()Ljj$/nio/file/FileTreeWalker$EventType;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker$Event;->type:Ljj$/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method
