.class public final enum Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;
.super Ljava/lang/Enum;
.source "ScriptSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

.field public static final enum BINARY:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

.field public static final enum BUILTIN:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

.field public static final enum CACHE:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

.field public static final enum PYPACKAGE:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

.field public static final enum WEB:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;
    .registers 5

    .line 3
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->PYPACKAGE:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    sget-object v1, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->BINARY:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    sget-object v2, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->CACHE:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    sget-object v3, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->WEB:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    sget-object v4, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->BUILTIN:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    const/4 v1, 0x0

    const-string v2, "python package"

    const-string v3, "PYPACKAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->PYPACKAGE:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    .line 5
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    const/4 v1, 0x1

    const-string v2, "binary"

    const-string v3, "BINARY"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->BINARY:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    .line 6
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    const/4 v1, 0x2

    const-string v2, "cache"

    const-string v3, "CACHE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->CACHE:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    .line 7
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    const/4 v1, 0x3

    const-string v2, "web"

    const-string v3, "WEB"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->WEB:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    .line 8
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    const/4 v1, 0x4

    const-string v2, "builtin"

    const-string v3, "BUILTIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->BUILTIN:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    .line 3
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->$values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->$VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;
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
    const-class v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;
    .registers 1

    .line 3
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->$VALUES:[Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->value:Ljava/lang/String;

    return-object p0
.end method
