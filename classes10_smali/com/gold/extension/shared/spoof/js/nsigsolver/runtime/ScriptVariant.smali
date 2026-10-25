.class public final enum Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;
.super Ljava/lang/Enum;
.source "ScriptVariant.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

.field public static final enum BUN_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

.field public static final enum DENO_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

.field public static final enum MINIFIED:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

.field public static final enum UNKNOWN:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

.field public static final enum UNMINIFIED:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

.field public static final enum V8_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;
    .registers 6

    .line 3
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->UNKNOWN:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    sget-object v1, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->MINIFIED:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    sget-object v2, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->UNMINIFIED:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    sget-object v3, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->DENO_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    sget-object v4, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->BUN_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    sget-object v5, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->V8_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    filled-new-array/range {v0 .. v5}, [Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    const/4 v1, 0x0

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->UNKNOWN:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    .line 5
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    const/4 v1, 0x1

    const-string v2, "minified"

    const-string v3, "MINIFIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->MINIFIED:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    .line 6
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    const/4 v1, 0x2

    const-string v2, "unminified"

    const-string v3, "UNMINIFIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->UNMINIFIED:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    .line 7
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    const/4 v1, 0x3

    const-string v2, "deno_npm"

    const-string v3, "DENO_NPM"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->DENO_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    .line 8
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    const/4 v1, 0x4

    const-string v2, "bun_npm"

    const-string v3, "BUN_NPM"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->BUN_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    .line 9
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    const/4 v1, 0x5

    const-string v2, "v8_npm"

    const-string v3, "V8_NPM"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->V8_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    .line 3
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->$values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->$VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;
    .registers 6

    .line 22
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 23
    iget-object v4, v3, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 27
    :cond_16
    sget-object p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->UNKNOWN:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;
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
    const-class v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;
    .registers 1

    .line 3
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->$VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->value:Ljava/lang/String;

    return-object p0
.end method
