.class public final enum Lcom/gold/extension/shared/Utils$NetworkType;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/Utils$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/Utils$NetworkType;

.field public static final enum MOBILE:Lcom/gold/extension/shared/Utils$NetworkType;

.field public static final enum NONE:Lcom/gold/extension/shared/Utils$NetworkType;

.field public static final enum OTHER:Lcom/gold/extension/shared/Utils$NetworkType;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/Utils$NetworkType;
    .registers 3

    .line 767
    sget-object v0, Lcom/gold/extension/shared/Utils$NetworkType;->NONE:Lcom/gold/extension/shared/Utils$NetworkType;

    sget-object v1, Lcom/gold/extension/shared/Utils$NetworkType;->MOBILE:Lcom/gold/extension/shared/Utils$NetworkType;

    sget-object v2, Lcom/gold/extension/shared/Utils$NetworkType;->OTHER:Lcom/gold/extension/shared/Utils$NetworkType;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/shared/Utils$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 768
    new-instance v0, Lcom/gold/extension/shared/Utils$NetworkType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/Utils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/Utils$NetworkType;->NONE:Lcom/gold/extension/shared/Utils$NetworkType;

    .line 769
    new-instance v0, Lcom/gold/extension/shared/Utils$NetworkType;

    const-string v1, "MOBILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/Utils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/Utils$NetworkType;->MOBILE:Lcom/gold/extension/shared/Utils$NetworkType;

    .line 770
    new-instance v0, Lcom/gold/extension/shared/Utils$NetworkType;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/Utils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/Utils$NetworkType;->OTHER:Lcom/gold/extension/shared/Utils$NetworkType;

    .line 767
    invoke-static {}, Lcom/gold/extension/shared/Utils$NetworkType;->$values()[Lcom/gold/extension/shared/Utils$NetworkType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/Utils$NetworkType;->$VALUES:[Lcom/gold/extension/shared/Utils$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 767
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/Utils$NetworkType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 767
    const-class v0, Lcom/gold/extension/shared/Utils$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/Utils$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/Utils$NetworkType;
    .registers 1

    .line 767
    sget-object v0, Lcom/gold/extension/shared/Utils$NetworkType;->$VALUES:[Lcom/gold/extension/shared/Utils$NetworkType;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/Utils$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/Utils$NetworkType;

    return-object v0
.end method
