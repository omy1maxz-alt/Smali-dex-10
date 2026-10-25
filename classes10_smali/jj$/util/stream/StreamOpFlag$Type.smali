.class final enum Ljj$/util/stream/StreamOpFlag$Type;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/util/stream/StreamOpFlag$Type;

.field public static final enum OP:Ljj$/util/stream/StreamOpFlag$Type;

.field public static final enum SPLITERATOR:Ljj$/util/stream/StreamOpFlag$Type;

.field public static final enum STREAM:Ljj$/util/stream/StreamOpFlag$Type;

.field public static final enum TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

.field public static final enum UPSTREAM_TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljj$/util/stream/StreamOpFlag$Type;

    const-string v1, "SPLITERATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljj$/util/stream/StreamOpFlag$Type;

    new-instance v0, Ljj$/util/stream/StreamOpFlag$Type;

    const-string v1, "STREAM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag$Type;->STREAM:Ljj$/util/stream/StreamOpFlag$Type;

    new-instance v0, Ljj$/util/stream/StreamOpFlag$Type;

    const-string v1, "OP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag$Type;->OP:Ljj$/util/stream/StreamOpFlag$Type;

    new-instance v0, Ljj$/util/stream/StreamOpFlag$Type;

    const-string v1, "TERMINAL_OP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

    new-instance v0, Ljj$/util/stream/StreamOpFlag$Type;

    const-string v1, "UPSTREAM_TERMINAL_OP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljj$/util/stream/StreamOpFlag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Ljj$/util/stream/StreamOpFlag$Type;

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljj$/util/stream/StreamOpFlag$Type;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->STREAM:Ljj$/util/stream/StreamOpFlag$Type;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->OP:Ljj$/util/stream/StreamOpFlag$Type;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

    aput-object v1, v0, v6

    sput-object v0, Ljj$/util/stream/StreamOpFlag$Type;->$VALUES:[Ljj$/util/stream/StreamOpFlag$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/util/stream/StreamOpFlag$Type;
    .registers 2

    const-class v0, Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/StreamOpFlag$Type;

    return-object v0
.end method

.method public static values()[Ljj$/util/stream/StreamOpFlag$Type;
    .registers 1

    sget-object v0, Ljj$/util/stream/StreamOpFlag$Type;->$VALUES:[Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v0}, [Ljj$/util/stream/StreamOpFlag$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/util/stream/StreamOpFlag$Type;

    return-object v0
.end method
