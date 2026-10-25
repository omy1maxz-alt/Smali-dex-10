.class final enum Ljj$/nio/file/FileTreeWalker$EventType;
.super Ljava/lang/Enum;
.source "FileTreeWalker.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/nio/file/FileTreeWalker$EventType;

.field public static final enum END_DIRECTORY:Ljj$/nio/file/FileTreeWalker$EventType;

.field public static final enum ENTRY:Ljj$/nio/file/FileTreeWalker$EventType;

.field public static final enum START_DIRECTORY:Ljj$/nio/file/FileTreeWalker$EventType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljj$/nio/file/FileTreeWalker$EventType;

    const-string v1, "START_DIRECTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljj$/nio/file/FileTreeWalker$EventType;

    new-instance v0, Ljj$/nio/file/FileTreeWalker$EventType;

    const-string v1, "END_DIRECTORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljj$/nio/file/FileTreeWalker$EventType;

    new-instance v0, Ljj$/nio/file/FileTreeWalker$EventType;

    const-string v1, "ENTRY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/nio/file/FileTreeWalker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/FileTreeWalker$EventType;->ENTRY:Ljj$/nio/file/FileTreeWalker$EventType;

    const/4 v0, 0x3

    new-array v0, v0, [Ljj$/nio/file/FileTreeWalker$EventType;

    sget-object v1, Ljj$/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljj$/nio/file/FileTreeWalker$EventType;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljj$/nio/file/FileTreeWalker$EventType;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/nio/file/FileTreeWalker$EventType;->ENTRY:Ljj$/nio/file/FileTreeWalker$EventType;

    aput-object v1, v0, v4

    sput-object v0, Ljj$/nio/file/FileTreeWalker$EventType;->$VALUES:[Ljj$/nio/file/FileTreeWalker$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/nio/file/FileTreeWalker$EventType;
    .registers 2

    const-class v0, Ljj$/nio/file/FileTreeWalker$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method

.method public static values()[Ljj$/nio/file/FileTreeWalker$EventType;
    .registers 1

    sget-object v0, Ljj$/nio/file/FileTreeWalker$EventType;->$VALUES:[Ljj$/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v0}, [Ljj$/nio/file/FileTreeWalker$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/nio/file/FileTreeWalker$EventType;

    return-object v0
.end method
