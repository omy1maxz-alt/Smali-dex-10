.class public final enum Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;
.super Ljava/lang/Enum;
.source "JsChallengeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

.field public static final enum N:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

.field public static final enum SIG:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;
    .registers 2

    .line 3
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->N:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    sget-object v1, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->SIG:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    filled-new-array {v0, v1}, [Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    const/4 v1, 0x0

    const-string v2, "n"

    const-string v3, "N"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->N:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    .line 5
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    const/4 v1, 0x1

    const-string v2, "sig"

    const-string v3, "SIG"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->SIG:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    .line 3
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->$values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->$VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;
    .registers 1

    .line 3
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->$VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->value:Ljava/lang/String;

    return-object p0
.end method
