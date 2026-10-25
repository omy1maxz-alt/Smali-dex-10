.class public final enum Ljj$/nio/file/FileVisitResult;
.super Ljava/lang/Enum;
.source "FileVisitResult.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/nio/file/FileVisitResult;

.field public static final enum CONTINUE:Ljj$/nio/file/FileVisitResult;

.field public static final enum SKIP_SIBLINGS:Ljj$/nio/file/FileVisitResult;

.field public static final enum SKIP_SUBTREE:Ljj$/nio/file/FileVisitResult;

.field public static final enum TERMINATE:Ljj$/nio/file/FileVisitResult;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljj$/nio/file/FileVisitResult;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/FileVisitResult;->CONTINUE:Ljj$/nio/file/FileVisitResult;

    new-instance v0, Ljj$/nio/file/FileVisitResult;

    const-string v1, "TERMINATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/FileVisitResult;->TERMINATE:Ljj$/nio/file/FileVisitResult;

    new-instance v0, Ljj$/nio/file/FileVisitResult;

    const-string v1, "SKIP_SUBTREE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljj$/nio/file/FileVisitResult;

    new-instance v0, Ljj$/nio/file/FileVisitResult;

    const-string v1, "SKIP_SIBLINGS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/nio/file/FileVisitResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljj$/nio/file/FileVisitResult;

    const/4 v0, 0x4

    new-array v0, v0, [Ljj$/nio/file/FileVisitResult;

    sget-object v1, Ljj$/nio/file/FileVisitResult;->CONTINUE:Ljj$/nio/file/FileVisitResult;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/nio/file/FileVisitResult;->TERMINATE:Ljj$/nio/file/FileVisitResult;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljj$/nio/file/FileVisitResult;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljj$/nio/file/FileVisitResult;

    aput-object v1, v0, v5

    sput-object v0, Ljj$/nio/file/FileVisitResult;->$VALUES:[Ljj$/nio/file/FileVisitResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/nio/file/FileVisitResult;
    .registers 2

    const-class v0, Ljj$/nio/file/FileVisitResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/FileVisitResult;

    return-object v0
.end method

.method public static values()[Ljj$/nio/file/FileVisitResult;
    .registers 1

    sget-object v0, Ljj$/nio/file/FileVisitResult;->$VALUES:[Ljj$/nio/file/FileVisitResult;

    invoke-virtual {v0}, [Ljj$/nio/file/FileVisitResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/nio/file/FileVisitResult;

    return-object v0
.end method
