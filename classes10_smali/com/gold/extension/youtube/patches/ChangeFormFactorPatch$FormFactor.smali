.class public final enum Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;
.super Ljava/lang/Enum;
.source "ChangeFormFactorPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormFactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

.field public static final enum AUTOMOTIVE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

.field public static final enum DEFAULT:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

.field public static final enum LARGE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

.field public static final enum SMALL:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

.field public static final enum UNKNOWN:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

.field public static final enum WEARABLE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;


# instance fields
.field final formFactorType:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final isBroken:Z


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;
    .registers 6

    .line 29
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->DEFAULT:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    sget-object v1, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->UNKNOWN:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    sget-object v2, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->SMALL:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    sget-object v3, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->LARGE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    sget-object v4, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->AUTOMOTIVE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    sget-object v5, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->WEARABLE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    filled-new-array/range {v0 .. v5}, [Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 33
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;-><init>(Ljava/lang/String;ILjava/lang/Integer;Z)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->DEFAULT:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    .line 41
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1, v4}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;-><init>(Ljava/lang/String;ILjava/lang/Integer;Z)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->UNKNOWN:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    .line 42
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMALL"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1, v3}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;-><init>(Ljava/lang/String;ILjava/lang/Integer;Z)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->SMALL:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    .line 43
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LARGE"

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5, v1, v3}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;-><init>(Ljava/lang/String;ILjava/lang/Integer;Z)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->LARGE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    .line 49
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AUTOMOTIVE"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;-><init>(Ljava/lang/String;ILjava/lang/Integer;Z)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->AUTOMOTIVE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    .line 50
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    const/4 v1, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "WEARABLE"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;-><init>(Ljava/lang/String;ILjava/lang/Integer;Z)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->WEARABLE:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    .line 29
    invoke-static {}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->$values()[Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->$VALUES:[Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Z)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->formFactorType:Ljava/lang/Integer;

    .line 58
    iput-boolean p4, p0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->isBroken:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 29
    const-class v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;
    .registers 1

    .line 29
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->$VALUES:[Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    return-object v0
.end method
