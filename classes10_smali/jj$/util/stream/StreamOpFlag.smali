.class final enum Ljj$/util/stream/StreamOpFlag;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/util/stream/StreamOpFlag;

.field private static final CLEAR_BITS:I = 0x2

.field public static final enum DISTINCT:Ljj$/util/stream/StreamOpFlag;

.field private static final FLAG_MASK:I

.field private static final FLAG_MASK_IS:I

.field private static final FLAG_MASK_NOT:I

.field static final INITIAL_OPS_VALUE:I

.field static final IS_DISTINCT:I

.field static final IS_ORDERED:I

.field static final IS_SHORT_CIRCUIT:I

.field static final IS_SIZED:I

.field static final IS_SORTED:I

.field static final NOT_DISTINCT:I

.field static final NOT_ORDERED:I

.field static final NOT_SIZED:I

.field static final NOT_SORTED:I

.field static final OP_MASK:I

.field public static final enum ORDERED:Ljj$/util/stream/StreamOpFlag;

.field private static final PRESERVE_BITS:I = 0x3

.field private static final SET_BITS:I = 0x1

.field public static final enum SHORT_CIRCUIT:Ljj$/util/stream/StreamOpFlag;

.field public static final enum SIZED:Ljj$/util/stream/StreamOpFlag;

.field public static final enum SORTED:Ljj$/util/stream/StreamOpFlag;

.field static final SPLITERATOR_CHARACTERISTICS_MASK:I

.field static final STREAM_MASK:I

.field static final TERMINAL_OP_MASK:I

.field static final UPSTREAM_TERMINAL_OP_MASK:I


# instance fields
.field private final bitPosition:I

.field private final clear:I

.field private final maskTable:Ljava/util/Map;

.field private final preserve:I

.field private final set:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Ljj$/util/stream/StreamOpFlag;

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljj$/util/stream/StreamOpFlag;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->STREAM:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "DISTINCT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Ljj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag;->DISTINCT:Ljj$/util/stream/StreamOpFlag;

    new-instance v0, Ljj$/util/stream/StreamOpFlag;

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljj$/util/stream/StreamOpFlag;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->STREAM:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SORTED"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v4, v1}, Ljj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag;->SORTED:Ljj$/util/stream/StreamOpFlag;

    new-instance v0, Ljj$/util/stream/StreamOpFlag;

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljj$/util/stream/StreamOpFlag;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->STREAM:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "ORDERED"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v5, v1}, Ljj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    new-instance v0, Ljj$/util/stream/StreamOpFlag;

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljj$/util/stream/StreamOpFlag;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->STREAM:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SIZED"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v6, v1}, Ljj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    new-instance v0, Ljj$/util/stream/StreamOpFlag;

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljj$/util/stream/StreamOpFlag;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SHORT_CIRCUIT"

    const/4 v7, 0x4

    const/16 v8, 0xc

    invoke-direct {v0, v2, v7, v8, v1}, Ljj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljj$/util/stream/StreamOpFlag;

    const/4 v0, 0x5

    new-array v0, v0, [Ljj$/util/stream/StreamOpFlag;

    sget-object v1, Ljj$/util/stream/StreamOpFlag;->DISTINCT:Ljj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/util/stream/StreamOpFlag;->SORTED:Ljj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v6

    sget-object v1, Ljj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v7

    sput-object v0, Ljj$/util/stream/StreamOpFlag;->$VALUES:[Ljj$/util/stream/StreamOpFlag;

    sget-object v0, Ljj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljj$/util/stream/StreamOpFlag;->createMask(Ljj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag$Type;->STREAM:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljj$/util/stream/StreamOpFlag;->createMask(Ljj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag$Type;->OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljj$/util/stream/StreamOpFlag;->createMask(Ljj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljj$/util/stream/StreamOpFlag;->OP_MASK:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljj$/util/stream/StreamOpFlag;->createMask(Ljj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljj$/util/stream/StreamOpFlag;->TERMINAL_OP_MASK:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljj$/util/stream/StreamOpFlag;->createMask(Ljj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljj$/util/stream/StreamOpFlag;->UPSTREAM_TERMINAL_OP_MASK:I

    invoke-static {}, Ljj$/util/stream/StreamOpFlag;->createFlagMask()I

    move-result v0

    sput v0, Ljj$/util/stream/StreamOpFlag;->FLAG_MASK:I

    sget v0, Ljj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    sget v0, Ljj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    shl-int/2addr v0, v4

    sput v0, Ljj$/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    sget v0, Ljj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    sget v1, Ljj$/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    or-int/2addr v0, v1

    sput v0, Ljj$/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->DISTINCT:Ljj$/util/stream/StreamOpFlag;

    iget v0, v0, Ljj$/util/stream/StreamOpFlag;->set:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->IS_DISTINCT:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->DISTINCT:Ljj$/util/stream/StreamOpFlag;

    iget v0, v0, Ljj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SORTED:Ljj$/util/stream/StreamOpFlag;

    iget v0, v0, Ljj$/util/stream/StreamOpFlag;->set:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->IS_SORTED:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SORTED:Ljj$/util/stream/StreamOpFlag;

    iget v0, v0, Ljj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    iget v0, v0, Ljj$/util/stream/StreamOpFlag;->set:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->ORDERED:Ljj$/util/stream/StreamOpFlag;

    iget v0, v0, Ljj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    iget v0, v0, Ljj$/util/stream/StreamOpFlag;->set:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->IS_SIZED:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    iget v0, v0, Ljj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljj$/util/stream/StreamOpFlag;

    iget v0, v0, Ljj$/util/stream/StreamOpFlag;->set:I

    sput v0, Ljj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjj$/util/stream/StreamOpFlag$MaskBuilder;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p4}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->build()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ljj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    const/4 p1, 0x2

    mul-int/lit8 p3, p3, 0x2

    iput p3, p0, Ljj$/util/stream/StreamOpFlag;->bitPosition:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    iput p2, p0, Ljj$/util/stream/StreamOpFlag;->set:I

    shl-int/2addr p1, p3

    iput p1, p0, Ljj$/util/stream/StreamOpFlag;->clear:I

    const/4 p1, 0x3

    shl-int/2addr p1, p3

    iput p1, p0, Ljj$/util/stream/StreamOpFlag;->preserve:I

    return-void
.end method

.method static combineOpFlags(II)I
    .registers 3

    invoke-static {p0}, Ljj$/util/stream/StreamOpFlag;->getMask(I)I

    move-result v0

    and-int/2addr v0, p1

    or-int/2addr v0, p0

    return v0
.end method

.method private static createFlagMask()I
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Ljj$/util/stream/StreamOpFlag;->values()[Ljj$/util/stream/StreamOpFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    iget v5, v4, Ljj$/util/stream/StreamOpFlag;->preserve:I

    or-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    return v0
.end method

.method private static createMask(Ljj$/util/stream/StreamOpFlag$Type;)I
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Ljj$/util/stream/StreamOpFlag;->values()[Ljj$/util/stream/StreamOpFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    iget-object v5, v4, Ljj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v4, Ljj$/util/stream/StreamOpFlag;->bitPosition:I

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1e
    return v0
.end method

.method static fromCharacteristics(I)I
    .registers 2

    sget v0, Ljj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v0, p0

    return v0
.end method

.method static fromCharacteristics(Ljj$/util/Spliterator;)I
    .registers 3

    invoke-interface {p0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_14

    invoke-interface {p0}, Ljj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    if-eqz v1, :cond_14

    sget v1, Ljj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, -0x5

    return v1

    :cond_14
    sget v1, Ljj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v1, v0

    return v1
.end method

.method private static getMask(I)I
    .registers 3

    if-nez p0, :cond_5

    sget v0, Ljj$/util/stream/StreamOpFlag;->FLAG_MASK:I

    goto :goto_12

    :cond_5
    sget v0, Ljj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, p0

    sget v1, Ljj$/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    not-int v0, v0

    :goto_12
    return v0
.end method

.method private static set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;
    .registers 4

    new-instance v0, Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Ljj$/util/stream/StreamOpFlag$Type;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Ljj$/util/stream/StreamOpFlag$MaskBuilder;->set(Ljj$/util/stream/StreamOpFlag$Type;)Ljj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method static toCharacteristics(I)I
    .registers 2

    sget v0, Ljj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v0, p0

    return v0
.end method

.method static toStreamFlags(I)I
    .registers 3

    not-int v0, p0

    shr-int/lit8 v0, v0, 0x1

    sget v1, Ljj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, v1

    and-int/2addr v0, p0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/util/stream/StreamOpFlag;
    .registers 2

    const-class v0, Ljj$/util/stream/StreamOpFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/StreamOpFlag;

    return-object v0
.end method

.method public static values()[Ljj$/util/stream/StreamOpFlag;
    .registers 1

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->$VALUES:[Ljj$/util/stream/StreamOpFlag;

    invoke-virtual {v0}, [Ljj$/util/stream/StreamOpFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/util/stream/StreamOpFlag;

    return-object v0
.end method


# virtual methods
.method canSet(Ljj$/util/stream/StreamOpFlag$Type;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method clear()I
    .registers 2

    iget v0, p0, Ljj$/util/stream/StreamOpFlag;->clear:I

    return v0
.end method

.method isCleared(I)Z
    .registers 4

    iget v0, p0, Ljj$/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Ljj$/util/stream/StreamOpFlag;->clear:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method isKnown(I)Z
    .registers 4

    iget v0, p0, Ljj$/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Ljj$/util/stream/StreamOpFlag;->set:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method isPreserved(I)Z
    .registers 4

    iget v0, p0, Ljj$/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Ljj$/util/stream/StreamOpFlag;->preserve:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method isStreamFlag()Z
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    sget-object v1, Ljj$/util/stream/StreamOpFlag$Type;->STREAM:Ljj$/util/stream/StreamOpFlag$Type;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method set()I
    .registers 2

    iget v0, p0, Ljj$/util/stream/StreamOpFlag;->set:I

    return v0
.end method
