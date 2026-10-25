.class public final enum Ljj$/nio/file/StandardCopyOption;
.super Ljava/lang/Enum;
.source "StandardCopyOption.java"

# interfaces
.implements Ljj$/nio/file/CopyOption;


# static fields
.field private static final synthetic $VALUES:[Ljj$/nio/file/StandardCopyOption;

.field public static final enum ATOMIC_MOVE:Ljj$/nio/file/StandardCopyOption;

.field public static final enum COPY_ATTRIBUTES:Ljj$/nio/file/StandardCopyOption;

.field public static final enum REPLACE_EXISTING:Ljj$/nio/file/StandardCopyOption;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljj$/nio/file/StandardCopyOption;

    const-string v1, "REPLACE_EXISTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljj$/nio/file/StandardCopyOption;

    new-instance v0, Ljj$/nio/file/StandardCopyOption;

    const-string v1, "COPY_ATTRIBUTES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljj$/nio/file/StandardCopyOption;

    new-instance v0, Ljj$/nio/file/StandardCopyOption;

    const-string v1, "ATOMIC_MOVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljj$/nio/file/StandardCopyOption;

    const/4 v0, 0x3

    new-array v0, v0, [Ljj$/nio/file/StandardCopyOption;

    sget-object v1, Ljj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljj$/nio/file/StandardCopyOption;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljj$/nio/file/StandardCopyOption;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljj$/nio/file/StandardCopyOption;

    aput-object v1, v0, v4

    sput-object v0, Ljj$/nio/file/StandardCopyOption;->$VALUES:[Ljj$/nio/file/StandardCopyOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/nio/file/StandardCopyOption;
    .registers 2

    const-class v0, Ljj$/nio/file/StandardCopyOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/StandardCopyOption;

    return-object v0
.end method

.method public static values()[Ljj$/nio/file/StandardCopyOption;
    .registers 1

    sget-object v0, Ljj$/nio/file/StandardCopyOption;->$VALUES:[Ljj$/nio/file/StandardCopyOption;

    invoke-virtual {v0}, [Ljj$/nio/file/StandardCopyOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/nio/file/StandardCopyOption;

    return-object v0
.end method
