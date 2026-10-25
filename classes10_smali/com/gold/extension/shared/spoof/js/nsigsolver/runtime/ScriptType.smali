.class public final enum Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;
.super Ljava/lang/Enum;
.source "ScriptType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

.field public static final enum CORE:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

.field public static final enum LIB:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

.field public static final enum WRAPPER:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;
    .registers 3

    .line 3
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->LIB:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    sget-object v1, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->CORE:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    sget-object v2, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->WRAPPER:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    const/4 v1, 0x0

    const-string v2, "lib"

    const-string v3, "LIB"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->LIB:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    .line 5
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    const/4 v1, 0x1

    const-string v2, "core"

    const-string v3, "CORE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->CORE:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    .line 6
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    const/4 v1, 0x2

    const-string v2, "wrapper"

    const-string v3, "WRAPPER"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->WRAPPER:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    .line 3
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->$values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->$VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;
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
    const-class v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;
    .registers 1

    .line 3
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->$VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->value:Ljava/lang/String;

    return-object p0
.end method
