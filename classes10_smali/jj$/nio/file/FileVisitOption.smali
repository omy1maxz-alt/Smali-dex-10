.class public final enum Ljj$/nio/file/FileVisitOption;
.super Ljava/lang/Enum;
.source "FileVisitOption.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/nio/file/FileVisitOption;

.field public static final enum FOLLOW_LINKS:Ljj$/nio/file/FileVisitOption;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljj$/nio/file/FileVisitOption;

    const-string v1, "FOLLOW_LINKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/FileVisitOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljj$/nio/file/FileVisitOption;

    const/4 v0, 0x1

    new-array v0, v0, [Ljj$/nio/file/FileVisitOption;

    sget-object v1, Ljj$/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljj$/nio/file/FileVisitOption;

    aput-object v1, v0, v2

    sput-object v0, Ljj$/nio/file/FileVisitOption;->$VALUES:[Ljj$/nio/file/FileVisitOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/nio/file/FileVisitOption;
    .registers 2

    const-class v0, Ljj$/nio/file/FileVisitOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/FileVisitOption;

    return-object v0
.end method

.method public static values()[Ljj$/nio/file/FileVisitOption;
    .registers 1

    sget-object v0, Ljj$/nio/file/FileVisitOption;->$VALUES:[Ljj$/nio/file/FileVisitOption;

    invoke-virtual {v0}, [Ljj$/nio/file/FileVisitOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/nio/file/FileVisitOption;

    return-object v0
.end method
