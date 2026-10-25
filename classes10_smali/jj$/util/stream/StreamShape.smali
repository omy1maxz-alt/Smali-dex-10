.class public final enum Ljj$/util/stream/StreamShape;
.super Ljava/lang/Enum;
.source "StreamShape.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/util/stream/StreamShape;

.field public static final enum DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

.field public static final enum INT_VALUE:Ljj$/util/stream/StreamShape;

.field public static final enum LONG_VALUE:Ljj$/util/stream/StreamShape;

.field public static final enum REFERENCE:Ljj$/util/stream/StreamShape;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljj$/util/stream/StreamShape;

    const-string v1, "REFERENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    new-instance v0, Ljj$/util/stream/StreamShape;

    const-string v1, "INT_VALUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    new-instance v0, Ljj$/util/stream/StreamShape;

    const-string v1, "LONG_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    new-instance v0, Ljj$/util/stream/StreamShape;

    const-string v1, "DOUBLE_VALUE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    const/4 v0, 0x4

    new-array v0, v0, [Ljj$/util/stream/StreamShape;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    aput-object v1, v0, v5

    sput-object v0, Ljj$/util/stream/StreamShape;->$VALUES:[Ljj$/util/stream/StreamShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/util/stream/StreamShape;
    .registers 2

    const-class v0, Ljj$/util/stream/StreamShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/StreamShape;

    return-object v0
.end method

.method public static values()[Ljj$/util/stream/StreamShape;
    .registers 1

    sget-object v0, Ljj$/util/stream/StreamShape;->$VALUES:[Ljj$/util/stream/StreamShape;

    invoke-virtual {v0}, [Ljj$/util/stream/StreamShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/util/stream/StreamShape;

    return-object v0
.end method
