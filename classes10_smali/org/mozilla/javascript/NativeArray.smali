.class public Lorg/mozilla/javascript/NativeArray;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeArray.java"

# interfaces
.implements Ljava/util/List;


# static fields
.field private static final ARRAY_TAG:Ljava/lang/Object;

.field private static final ConstructorId_concat:I = -0xd

.field private static final ConstructorId_every:I = -0x11

.field private static final ConstructorId_filter:I = -0x12

.field private static final ConstructorId_find:I = -0x16

.field private static final ConstructorId_findIndex:I = -0x17

.field private static final ConstructorId_forEach:I = -0x13

.field private static final ConstructorId_from:I = -0x1c

.field private static final ConstructorId_indexOf:I = -0xf

.field private static final ConstructorId_isArray:I = -0x1a

.field private static final ConstructorId_join:I = -0x5

.field private static final ConstructorId_lastIndexOf:I = -0x10

.field private static final ConstructorId_map:I = -0x14

.field private static final ConstructorId_of:I = -0x1b

.field private static final ConstructorId_pop:I = -0x9

.field private static final ConstructorId_push:I = -0x8

.field private static final ConstructorId_reduce:I = -0x18

.field private static final ConstructorId_reduceRight:I = -0x19

.field private static final ConstructorId_reverse:I = -0x6

.field private static final ConstructorId_shift:I = -0xa

.field private static final ConstructorId_slice:I = -0xe

.field private static final ConstructorId_some:I = -0x15

.field private static final ConstructorId_sort:I = -0x7

.field private static final ConstructorId_splice:I = -0xc

.field private static final ConstructorId_unshift:I = -0xb

.field private static final DEFAULT_COMPARATOR:Ljava/util/Comparator;

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xa

.field private static final GROW_FACTOR:D = 1.5

.field private static final Id_concat:I = 0xd

.field private static final Id_constructor:I = 0x1

.field private static final Id_copyWithin:I = 0x1f

.field private static final Id_entries:I = 0x1d

.field private static final Id_every:I = 0x11

.field private static final Id_fill:I = 0x1a

.field private static final Id_filter:I = 0x12

.field private static final Id_find:I = 0x16

.field private static final Id_findIndex:I = 0x17

.field private static final Id_forEach:I = 0x13

.field private static final Id_includes:I = 0x1e

.field private static final Id_indexOf:I = 0xf

.field private static final Id_join:I = 0x5

.field private static final Id_keys:I = 0x1b

.field private static final Id_lastIndexOf:I = 0x10

.field private static final Id_length:I = 0x1

.field private static final Id_map:I = 0x14

.field private static final Id_pop:I = 0x9

.field private static final Id_push:I = 0x8

.field private static final Id_reduce:I = 0x18

.field private static final Id_reduceRight:I = 0x19

.field private static final Id_reverse:I = 0x6

.field private static final Id_shift:I = 0xa

.field private static final Id_slice:I = 0xe

.field private static final Id_some:I = 0x15

.field private static final Id_sort:I = 0x7

.field private static final Id_splice:I = 0xc

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toSource:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final Id_unshift:I = 0xb

.field private static final Id_values:I = 0x1c

.field private static final MAX_INSTANCE_ID:I = 0x1

.field private static final MAX_PRE_GROW_SIZE:I = 0x55555554

.field private static final MAX_PROTOTYPE_ID:I = 0x20

.field private static final NEGATIVE_ONE:Ljava/lang/Long;

.field private static final STRING_COMPARATOR:Ljava/util/Comparator;

.field private static final SymbolId_iterator:I = 0x20

.field private static maximumInitialCapacity:I = 0x0

.field private static final serialVersionUID:J = 0x65be3f5055db7c6aL


# instance fields
.field private dense:[Ljava/lang/Object;

.field private denseOnly:Z

.field private length:J

.field private lengthAttr:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Array"

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    new-instance v0, Lorg/mozilla/javascript/NativeArray$StringLikeComparator;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeArray$StringLikeComparator;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->STRING_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/mozilla/javascript/NativeArray$ElementComparator;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeArray$ElementComparator;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    const/16 v0, 0x2710

    sput v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    sget v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v0, :cond_24

    long-to-int v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1b

    const/16 v0, 0xa

    :cond_1b
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    iput-wide p1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/NativeArray;->STRING_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private static callConstructorOrCreateArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;JZ)Lorg/mozilla/javascript/Scriptable;
    .registers 10

    instance-of v0, p2, Lorg/mozilla/javascript/Function;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    if-nez p5, :cond_11

    const-wide/16 v2, 0x0

    cmp-long p5, p3, v2

    if-lez p5, :cond_e

    goto :goto_11

    :cond_e
    :try_start_e
    sget-object p5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_1a

    :cond_11
    :goto_11
    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p5, v1

    :goto_1a
    check-cast p2, Lorg/mozilla/javascript/Function;

    invoke-interface {p2, p0, p1, p5}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2
    :try_end_20
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_e .. :try_end_20} :catch_21

    goto :goto_31

    :catch_21
    move-exception p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/EcmaError;->getName()Ljava/lang/String;

    move-result-object p5

    const-string v0, "TypeError"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2f

    goto :goto_30

    :cond_2f
    throw p2

    :cond_30
    :goto_30
    const/4 p2, 0x0

    :goto_31
    if-nez p2, :cond_40

    const-wide/32 v2, 0x7fffffff

    cmp-long p2, p3, v2

    if-lez p2, :cond_3b

    goto :goto_3c

    :cond_3b
    long-to-int v1, p3

    :goto_3c
    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    :cond_40
    return-object p2
.end method

.method private static concatSpreadArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;J)J
    .registers 14

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v1

    add-long v3, v1, p3

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_32

    instance-of v5, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v5, :cond_32

    move-object v5, p1

    check-cast v5, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v6, v5, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v6, :cond_32

    instance-of v6, p2, Lorg/mozilla/javascript/NativeArray;

    if-eqz v6, :cond_32

    move-object v6, p2

    check-cast v6, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v7, v6, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v7, :cond_32

    long-to-int p0, v3

    invoke-direct {v5, p0}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    iget-object p0, v6, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-object p1, v5, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int p2, p3

    long-to-int p3, v1

    invoke-static {p0, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-wide v3

    :cond_32
    const-wide/16 v5, 0x0

    :goto_34
    cmp-long v0, v5, v1

    if-gez v0, :cond_48

    invoke-static {p2, v5, v6}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v7, :cond_43

    invoke-static {p0, p1, p3, p4, v0}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_43
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    add-long/2addr p3, v7

    goto :goto_34

    :cond_48
    return-wide v3
.end method

.method private defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, p0

    :cond_7
    new-instance v1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v2, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    const-string/jumbo v0, "value"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v0, "writable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "enumerable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "configurable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method private static defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .registers 7

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p2, v0

    if-lez p0, :cond_f

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p1, p4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_13

    :cond_f
    long-to-int p0, p2

    invoke-interface {p1, p0, p1, p4}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_13
    return-void
.end method

.method private static deleteElem(Lorg/mozilla/javascript/Scriptable;J)V
    .registers 7

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_a

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    goto :goto_11

    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private static doConcat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;J)J
    .registers 6

    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/NativeArray;->isConcatSpreadable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->concatSpreadArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;J)J

    move-result-wide p0

    return-wide p0

    :cond_d
    invoke-static {p0, p2, p4, p5, p3}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    const-wide/16 p0, 0x1

    add-long/2addr p4, p0

    return-wide p4
.end method

.method private ensureCapacity(I)Z
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_2e

    const v1, 0x55555554

    const/4 v2, 0x0

    if-le p1, v1, :cond_e

    iput-boolean v2, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    return v2

    :cond_e
    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v3, 0x3ff8000000000000L  # 1.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    :cond_2e
    const/4 p1, 0x1

    return p1
.end method

.method private static getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .registers 4

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, p1, :cond_9

    goto :goto_b

    :cond_9
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_b
    return-object p0
.end method

.method static getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J
    .registers 9

    instance-of p0, p1, Lorg/mozilla/javascript/NativeString;

    if-eqz p0, :cond_c

    check-cast p1, Lorg/mozilla/javascript/NativeString;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeString;->getLength()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_c
    instance-of p0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p0, :cond_17

    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide p0

    return-wide p0

    :cond_17
    const-string p0, "length"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    if-ne p0, p1, :cond_24

    return-wide v0

    :cond_24
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    const-wide v4, 0x433fffffffffffffL  # 9.007199254740991E15

    cmpl-double p1, v2, v4

    if-lez p1, :cond_42

    if-nez p2, :cond_37

    const-wide/32 p0, 0x7fffffff

    return-wide p0

    :cond_37
    const-string p0, "msg.arraylength.bad"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_42
    const-wide/16 p1, 0x0

    cmpg-double v4, v2, p1

    if-gez v4, :cond_49

    return-wide v0

    :cond_49
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method static getMaximumInitialCapacity()I
    .registers 1

    sget v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return v0
.end method

.method private static getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .registers 6

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_10

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    long-to-int p2, p1

    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static isConcatSpreadable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_1c

    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    sget-object v1, Lorg/mozilla/javascript/SymbolKey;->IS_CONCAT_SPREADABLE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_1c

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_32

    const-string v0, "Array"

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    invoke-static {p2}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x17

    const/16 v6, 0x16

    if-eq v6, v4, :cond_1c

    if-ne v5, v4, :cond_21

    :cond_1c
    move-object/from16 v7, p1

    invoke-static {v0, v2, v7}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    :cond_21
    const/16 v7, 0x14

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v4, v7, :cond_29

    const/4 v10, 0x1

    goto :goto_2a

    :cond_29
    const/4 v10, 0x0

    :goto_2a
    invoke-static {v0, v2, v10}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v10

    array-length v12, v3

    if-lez v12, :cond_34

    aget-object v12, v3, v9

    goto :goto_36

    :cond_34
    sget-object v12, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_36
    if-eqz v12, :cond_117

    instance-of v13, v12, Lorg/mozilla/javascript/Function;

    if-eqz v13, :cond_117

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v13

    const/16 v14, 0xc8

    if-lt v13, v14, :cond_4e

    instance-of v13, v12, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-nez v13, :cond_49

    goto :goto_4e

    :cond_49
    invoke-static {v12}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4e
    :goto_4e
    check-cast v12, Lorg/mozilla/javascript/Function;

    invoke-static {v12}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v13

    array-length v14, v3

    const/4 v15, 0x2

    if-lt v14, v15, :cond_6a

    aget-object v14, v3, v8

    if-eqz v14, :cond_6a

    aget-object v14, v3, v8

    sget-object v15, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v14, v15, :cond_63

    goto :goto_6a

    :cond_63
    aget-object v3, v3, v8

    invoke-static {v0, v1, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_6b

    :cond_6a
    :goto_6a
    move-object v3, v13

    :goto_6b
    const/4 v14, 0x0

    const/16 v15, 0x12

    if-eq v4, v15, :cond_72

    if-ne v4, v7, :cond_7b

    :cond_72
    if-ne v4, v7, :cond_76

    long-to-int v7, v10

    goto :goto_77

    :cond_76
    const/4 v7, 0x0

    :goto_77
    invoke-virtual {v0, v1, v7}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v14

    :cond_7b
    const-wide/16 v15, 0x0

    move-wide v8, v15

    move-wide/from16 v17, v8

    :goto_80
    cmp-long v7, v8, v10

    if-gez v7, :cond_103

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v8, v9}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v15

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    const-wide/16 v19, 0x1

    if-ne v15, v1, :cond_9f

    if-eq v4, v6, :cond_9d

    if-ne v4, v5, :cond_96

    goto :goto_9d

    :cond_96
    move-wide/from16 v5, v17

    const/16 v16, 0x2

    const/16 v21, 0x1

    goto :goto_b7

    :cond_9d
    :goto_9d
    sget-object v15, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_9f
    const/4 v1, 0x0

    aput-object v15, v7, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v21, 0x1

    aput-object v16, v7, v21

    const/16 v16, 0x2

    aput-object v2, v7, v16

    invoke-interface {v12, v0, v13, v3, v7}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    packed-switch v4, :pswitch_data_11e

    :cond_b5
    :goto_b5
    :pswitch_b5  #0x13
    move-wide/from16 v5, v17

    :goto_b7
    const/16 v22, 0x0

    goto :goto_f9

    :pswitch_ba  #0x17
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    long-to-double v0, v8

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_c6  #0x16
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    return-object v15

    :pswitch_cd  #0x15
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_d6  #0x14
    invoke-static {v0, v14, v8, v9, v1}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_b5

    :pswitch_da  #0x12
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    move-wide/from16 v5, v17

    add-long v17, v5, v19

    const/16 v22, 0x0

    aget-object v1, v7, v22

    invoke-static {v0, v14, v5, v6, v1}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_fb

    :pswitch_ec  #0x11
    move-wide/from16 v5, v17

    const/16 v22, 0x0

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_f9
    :goto_f9
    move-wide/from16 v17, v5

    :goto_fb
    add-long v8, v8, v19

    const/16 v5, 0x17

    const/16 v6, 0x16

    goto/16 :goto_80

    :cond_103
    packed-switch v4, :pswitch_data_130

    :pswitch_106  #0x13, 0x16
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :pswitch_109  #0x17
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_110  #0x15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_113  #0x12, 0x14
    return-object v14

    :pswitch_114  #0x11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_117
    invoke-static {v12}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_11d

    :goto_11c
    throw v0

    :goto_11d
    goto :goto_11c

    :pswitch_data_11e
    .packed-switch 0x11
        :pswitch_ec  #00000011
        :pswitch_da  #00000012
        :pswitch_b5  #00000013
        :pswitch_d6  #00000014
        :pswitch_cd  #00000015
        :pswitch_c6  #00000016
        :pswitch_ba  #00000017
    .end packed-switch

    :pswitch_data_130
    .packed-switch 0x11
        :pswitch_114  #00000011
        :pswitch_113  #00000012
        :pswitch_106  #00000013
        :pswitch_113  #00000014
        :pswitch_110  #00000015
        :pswitch_106  #00000016
        :pswitch_109  #00000017
    .end packed-switch
.end method

.method private static jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    array-length p1, p2

    if-nez p1, :cond_b

    new-instance p0, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 p1, 0x78

    if-ne p0, p1, :cond_19

    new-instance p0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_19
    const/4 p0, 0x0

    aget-object p0, p2, p0

    array-length p1, p2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_45

    instance-of p1, p0, Ljava/lang/Number;

    if-nez p1, :cond_25

    goto :goto_45

    :cond_25
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide p1

    long-to-double v0, p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-nez p0, :cond_3a

    new-instance p0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    return-object p0

    :cond_3a
    const-string p0, "msg.arraylength.bad"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_45
    :goto_45
    new-instance p0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    return-object p0
.end method

.method private static js_concat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 15

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->doConcat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;J)J

    move-result-wide v0

    array-length v2, p3

    move-wide v8, v0

    :goto_18
    if-ge p2, v2, :cond_26

    aget-object v7, p3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v10

    invoke-static/range {v4 .. v9}, Lorg/mozilla/javascript/NativeArray;->doConcat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;J)J

    move-result-wide v8

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_26
    invoke-static {p0, v10, v8, v9}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v10
.end method

.method private static js_copyWithin(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v4

    array-length v6, v1

    const/4 v7, 0x1

    if-lt v6, v7, :cond_14

    aget-object v3, v1, v3

    goto :goto_16

    :cond_14
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_16
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gez v3, :cond_27

    add-long/2addr v8, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_2b

    :cond_27
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :goto_2b
    array-length v3, v1

    const/4 v6, 0x2

    if-lt v3, v6, :cond_32

    aget-object v3, v1, v7

    goto :goto_34

    :cond_32
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_34
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v12

    double-to-long v12, v12

    cmp-long v3, v12, v10

    if-gez v3, :cond_43

    add-long/2addr v12, v4

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_47

    :cond_43
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :goto_47
    array-length v3, v1

    const/4 v14, 0x3

    if-lt v3, v14, :cond_5b

    aget-object v3, v1, v6

    invoke-static {v3}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    aget-object v1, v1, v6

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v14

    double-to-long v14, v14

    goto :goto_5c

    :cond_5b
    move-wide v14, v4

    :goto_5c
    cmp-long v1, v14, v10

    if-gez v1, :cond_66

    add-long/2addr v14, v4

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    goto :goto_6a

    :cond_66
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :goto_6a
    sub-long/2addr v14, v12

    sub-long/2addr v4, v8

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v1, v12, v8

    if-gez v1, :cond_81

    add-long v14, v12, v3

    cmp-long v1, v8, v14

    if-gez v1, :cond_81

    const/4 v7, -0x1

    sub-long v12, v14, v5

    add-long/2addr v8, v3

    sub-long/2addr v8, v5

    :cond_81
    instance-of v1, v2, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_a5

    const-wide/32 v14, 0x7fffffff

    cmp-long v1, v3, v14

    if-gtz v1, :cond_a5

    move-object v1, v2

    check-cast v1, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v14, v1, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v14, :cond_a5

    :goto_93
    cmp-long v0, v3, v10

    if-lez v0, :cond_a4

    iget-object v0, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v2, v8

    long-to-int v14, v12

    aget-object v14, v0, v14

    aput-object v14, v0, v2

    int-to-long v14, v7

    add-long/2addr v12, v14

    add-long/2addr v8, v14

    sub-long/2addr v3, v5

    goto :goto_93

    :cond_a4
    return-object p2

    :cond_a5
    :goto_a5
    cmp-long v1, v3, v10

    if-lez v1, :cond_c4

    invoke-static {v2, v12, v13}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v14, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v14, :cond_bc

    invoke-static {v1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b8

    goto :goto_bc

    :cond_b8
    invoke-static {v0, v2, v8, v9, v1}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_bf

    :cond_bc
    :goto_bc
    invoke-static {v2, v8, v9}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    :goto_bf
    int-to-long v14, v7

    add-long/2addr v12, v14

    add-long/2addr v8, v14

    sub-long/2addr v3, v5

    goto :goto_a5

    :cond_c4
    return-object p2
.end method

.method private static js_fill(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v1

    array-length p1, p3

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    if-lt p1, v3, :cond_18

    const/4 p1, 0x1

    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    double-to-long v6, v6

    goto :goto_19

    :cond_18
    move-wide v6, v4

    :goto_19
    cmp-long p1, v6, v4

    if-gez p1, :cond_23

    add-long/2addr v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_27

    :cond_23
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_27
    array-length p1, p3

    const/4 v8, 0x3

    if-lt p1, v8, :cond_3b

    aget-object p1, p3, v3

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    aget-object p1, p3, v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v8

    double-to-long v8, v8

    goto :goto_3c

    :cond_3b
    move-wide v8, v1

    :goto_3c
    cmp-long p1, v8, v4

    if-gez p1, :cond_46

    add-long/2addr v1, v8

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_4a

    :cond_46
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_4a
    array-length p1, p3

    if-lez p1, :cond_50

    aget-object p1, p3, v0

    goto :goto_52

    :cond_50
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_52
    cmp-long p3, v6, v1

    if-gez p3, :cond_5d

    invoke-static {p0, p2, v6, v7, p1}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    const-wide/16 v3, 0x1

    add-long/2addr v6, v3

    goto :goto_52

    :cond_5d
    return-object p2
.end method

.method private static js_from(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p3

    array-length v2, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v2, v9, :cond_e

    aget-object v2, v1, v8

    goto :goto_10

    :cond_e
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_10
    invoke-static {v7, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v10

    array-length v2, v1

    const/4 v11, 0x2

    if-lt v2, v11, :cond_1b

    aget-object v2, v1, v9

    goto :goto_1d

    :cond_1b
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_1d
    sget-object v3, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v12, v4, 0x1

    const/4 v4, 0x0

    if-eqz v12, :cond_41

    instance-of v4, v2, Lorg/mozilla/javascript/Function;

    if-eqz v4, :cond_3a

    move-object v4, v2

    check-cast v4, Lorg/mozilla/javascript/Function;

    array-length v2, v1

    const/4 v5, 0x3

    if-lt v2, v5, :cond_41

    aget-object v1, v1, v11

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_41

    :cond_3a
    const-string v0, "msg.map.function.not"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_41
    :goto_41
    move-object v13, v3

    move-object v14, v4

    sget-object v1, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {v10, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v10, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v17, 0x0

    if-nez v2, :cond_b4

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_b4

    invoke-static {v1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b4

    invoke-static {v10, v0, v7}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b4

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v6

    move v6, v10

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/NativeArray;->callConstructorOrCreateArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;JZ)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {v2, v0, v7, v15}, Lorg/mozilla/javascript/IteratorLikeIterable;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :try_start_77
    invoke-virtual {v2}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object v3

    move-wide/from16 v4, v17

    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v12, :cond_97

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v6, v10, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v9

    invoke-interface {v14, v0, v7, v13, v10}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_97
    invoke-static {v0, v1, v4, v5, v6}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    :try_end_9a
    .catchall {:try_start_77 .. :try_end_9a} :catchall_a5

    const-wide/16 v15, 0x1

    add-long/2addr v4, v15

    goto :goto_7d

    :cond_9e
    invoke-virtual {v2}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    invoke-static {v0, v1, v4, v5}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v1

    :catchall_a5
    move-exception v0

    move-object v1, v0

    :try_start_a7
    throw v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v0

    move-object v3, v0

    :try_start_aa
    invoke-virtual {v2}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b3

    :catchall_ae
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b3
    throw v3

    :cond_b4
    invoke-static {v0, v10, v8}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 p2, v4

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/NativeArray;->callConstructorOrCreateArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;JZ)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    move-wide/from16 v2, v17

    :goto_c7
    cmp-long v6, v2, v4

    if-gez v6, :cond_ea

    invoke-static {v10, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    sget-object v15, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v6, v15, :cond_e6

    if-eqz v12, :cond_e3

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v6, v15, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v15, v9

    invoke-interface {v14, v0, v7, v13, v15}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_e3
    invoke-static {v0, v1, v2, v3, v6}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_e6
    const-wide/16 v15, 0x1

    add-long/2addr v2, v15

    goto :goto_c7

    :cond_ea
    invoke-static {v0, v1, v4, v5}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v1
.end method

.method private static js_includes(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 12

    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_7

    aget-object v0, p3, v1

    goto :goto_9

    :cond_7
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_9
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "length"

    invoke-static {p2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toLength([Ljava/lang/Object;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_25

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_25
    array-length p2, p3

    const/4 v5, 0x2

    const-wide/16 v6, 0x1

    if-ge p2, v5, :cond_2c

    goto :goto_47

    :cond_2c
    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p1

    double-to-long p1, p1

    cmp-long p3, p1, v3

    if-gez p3, :cond_3d

    add-long/2addr p1, v1

    cmp-long p3, p1, v3

    if-gez p3, :cond_3d

    goto :goto_3e

    :cond_3d
    move-wide v3, p1

    :goto_3e
    sub-long p1, v1, v6

    cmp-long p3, v3, p1

    if-lez p3, :cond_47

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_47
    :goto_47
    instance-of p1, p0, Lorg/mozilla/javascript/NativeArray;

    if-eqz p1, :cond_7d

    move-object p1, p0

    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p2, p1, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p2, :cond_7d

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    long-to-int p2, v3

    :goto_57
    int-to-long v3, p2

    cmp-long p3, v3, v1

    if-gez p3, :cond_7a

    iget-object p3, p1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object p3, p3, p2

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p3, v3, :cond_6a

    if-eqz p0, :cond_6a

    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p3

    :cond_6a
    if-ne p3, v3, :cond_6e

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_6e
    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->sameZero(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_77

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_77
    add-int/lit8 p2, p2, 0x1

    goto :goto_57

    :cond_7a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7d
    :goto_7d
    cmp-long p1, v3, v1

    if-gez p1, :cond_96

    invoke-static {p0, v3, v4}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p1, p2, :cond_8b

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_8b
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->sameZero(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_94
    add-long/2addr v3, v6

    goto :goto_7d

    :cond_96
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_7

    aget-object v0, p3, v1

    goto :goto_9

    :cond_7
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_9
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v1

    array-length p0, p3

    const/4 p2, 0x2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-ge p0, p2, :cond_1a

    goto :goto_36

    :cond_1a
    const/4 p0, 0x1

    aget-object p0, p3, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p2

    double-to-long p2, p2

    cmp-long p0, p2, v5

    if-gez p0, :cond_2c

    add-long/2addr p2, v1

    cmp-long p0, p2, v5

    if-gez p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move-wide v5, p2

    :goto_2d
    sub-long p2, v1, v3

    cmp-long p0, v5, p2

    if-lez p0, :cond_36

    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0

    :cond_36
    :goto_36
    instance-of p0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p0, :cond_6c

    move-object p0, p1

    check-cast p0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p2, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p2, :cond_6c

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    long-to-int p2, v5

    :goto_46
    int-to-long v3, p2

    cmp-long p3, v3, v1

    if-gez p3, :cond_69

    iget-object p3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object p3, p3, p2

    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p3, v5, :cond_59

    if-eqz p1, :cond_59

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p3

    :cond_59
    if-eq p3, v5, :cond_66

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_66

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_66
    add-int/lit8 p2, p2, 0x1

    goto :goto_46

    :cond_69
    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0

    :cond_6c
    :goto_6c
    cmp-long p0, v5, v1

    if-gez p0, :cond_85

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, p2, :cond_83

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_83

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_83
    add-long/2addr v5, v3

    goto :goto_6c

    :cond_85
    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0
.end method

.method private static js_isArray(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Array"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 10

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-nez v5, :cond_a2

    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_21

    aget-object v0, p3, p2

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_1a

    goto :goto_21

    :cond_1a
    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_23

    :cond_21
    :goto_21
    const-string p3, ","

    :goto_23
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_5a

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v1, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_5a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_33
    if-ge p2, v2, :cond_55

    if-eqz p2, :cond_3a

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    iget-object p1, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, p1

    if-ge p2, v1, :cond_52

    aget-object p1, p1, p2

    if-eqz p1, :cond_52

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p1, v1, :cond_52

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, v1, :cond_52

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    add-int/lit8 p2, p2, 0x1

    goto :goto_33

    :cond_55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5a
    if-nez v2, :cond_5f

    const-string p0, ""

    return-object p0

    :cond_5f
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_63
    if-eq v1, v2, :cond_7e

    int-to-long v4, v1

    invoke-static {p0, p1, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7b

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v4, v5, :cond_7b

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    aput-object v4, v0, v1

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_7e
    add-int/lit8 p0, v2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    mul-int p0, p0, p1

    add-int/2addr v3, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_8c
    if-eq p2, v2, :cond_9d

    if-eqz p2, :cond_93

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    aget-object p1, v0, p2

    if-eqz p1, :cond_9a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    add-int/lit8 p2, p2, 0x1

    goto :goto_8c

    :cond_9d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.arraylength.too.big"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    goto :goto_ae

    :goto_ad
    throw p0

    :goto_ae
    goto :goto_ad
.end method

.method private static js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_7

    aget-object v0, p3, v1

    goto :goto_9

    :cond_7
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_9
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v1

    array-length p0, p3

    const/4 p2, 0x2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    if-ge p0, p2, :cond_1b

    sub-long/2addr v1, v5

    goto :goto_36

    :cond_1b
    const/4 p0, 0x1

    aget-object p0, p3, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p2

    double-to-long p2, p2

    cmp-long p0, p2, v1

    if-ltz p0, :cond_29

    sub-long/2addr v1, v5

    goto :goto_2f

    :cond_29
    cmp-long p0, p2, v3

    if-gez p0, :cond_2e

    add-long/2addr p2, v1

    :cond_2e
    move-wide v1, p2

    :goto_2f
    cmp-long p0, v1, v3

    if-gez p0, :cond_36

    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0

    :cond_36
    :goto_36
    instance-of p0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p0, :cond_6a

    move-object p0, p1

    check-cast p0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p2, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p2, :cond_6a

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    long-to-int p2, v1

    :goto_46
    if-ltz p2, :cond_67

    iget-object p3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object p3, p3, p2

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p3, v1, :cond_56

    if-eqz p1, :cond_56

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p3

    :cond_56
    if-eq p3, v1, :cond_64

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_64

    int-to-long p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_64
    add-int/lit8 p2, p2, -0x1

    goto :goto_46

    :cond_67
    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0

    :cond_6a
    :goto_6a
    cmp-long p0, v1, v3

    if-ltz p0, :cond_83

    invoke-static {p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, p2, :cond_81

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_81

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_81
    sub-long/2addr v1, v5

    goto :goto_6a

    :cond_83
    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0
.end method

.method private static js_of(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    array-length v0, p3

    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/NativeArray;->callConstructorOrCreateArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;JZ)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    const/4 p2, 0x0

    :goto_b
    array-length v0, p3

    if-ge p2, v0, :cond_17

    int-to-long v0, p2

    aget-object v2, p3, p2

    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_17
    array-length p2, p3

    int-to-long p2, p2

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object p1
.end method

.method private static js_pop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_27

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p3, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p3, :cond_27

    iget-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p3, v4, v2

    if-lez p3, :cond_27

    sub-long/2addr v4, v0

    iput-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int p1, v4

    aget-object p1, p0, p1

    long-to-int p2, v4

    sget-object p3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object p3, p0, p2

    return-object p1

    :cond_27
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide p2

    cmp-long v4, p2, v2

    if-lez v4, :cond_39

    sub-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    goto :goto_3b

    :cond_39
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_3b
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v0
.end method

.method private static js_push(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    const/4 v0, 0x0

    if-eqz p2, :cond_37

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v1, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_37

    iget-wide v1, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v2, v1

    array-length v1, p3

    add-int/2addr v2, v1

    invoke-direct {p2, v2}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v1

    if-eqz v1, :cond_37

    :goto_1b
    array-length p0, p3

    if-ge v0, p0, :cond_2f

    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v1, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int p1, v1

    aget-object v1, p3, v0

    aput-object v1, p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    iget-wide p0, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double p0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_37
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v1

    :goto_3b
    array-length p2, p3

    if-ge v0, p2, :cond_48

    int-to-long v3, v0

    add-long/2addr v3, v1

    aget-object p2, p3, v0

    invoke-static {p0, p1, v3, v4, p2}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_48
    array-length p2, p3

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 p2, 0x78

    if-ne p0, p2, :cond_63

    array-length p0, p3

    if-nez p0, :cond_5d

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_62

    :cond_5d
    array-length p0, p3

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p3, p0

    :goto_62
    return-object p0

    :cond_63
    return-object p1
.end method

.method private static js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 14

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    const/4 p3, 0x0

    if-eqz p2, :cond_27

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v0, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v0, :cond_27

    iget-wide v0, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int p0, v0

    add-int/lit8 p0, p0, -0x1

    :goto_15
    if-ge p3, p0, :cond_26

    iget-object v0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v1, v0, p3

    aget-object v2, v0, p0

    aput-object v2, v0, p3

    aput-object v1, v0, p0

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_15

    :cond_26
    return-object p1

    :cond_27
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide p2

    const-wide/16 v0, 0x2

    div-long v0, p2, v0

    const-wide/16 v2, 0x0

    :goto_31
    cmp-long v4, v2, v0

    if-gez v4, :cond_4a

    sub-long v4, p2, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {p1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p1, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {p0, p1, v2, v3, v9}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    invoke-static {p0, p1, v4, v5, v8}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v2, v6

    goto :goto_31

    :cond_4a
    return-object p1
.end method

.method private static js_shift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    if-eqz p2, :cond_34

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v4, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v4, :cond_34

    iget-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_34

    sub-long/2addr v4, v2

    iput-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object p1, p0, p3

    const/4 v0, 0x1

    long-to-int v1, v4

    invoke-static {p0, v0, p0, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide p2, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int p3, p2

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object p2, p0, p3

    if-ne p1, p2, :cond_33

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_33
    return-object p1

    :cond_34
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide p2

    cmp-long v4, p2, v0

    if-lez v4, :cond_59

    sub-long/2addr p2, v2

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v4

    cmp-long v5, p2, v0

    if-lez v5, :cond_55

    move-wide v0, v2

    :goto_46
    cmp-long v5, v0, p2

    if-gtz v5, :cond_55

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-static {p0, p1, v6, v7, v5}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v0, v2

    goto :goto_46

    :cond_55
    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    goto :goto_5b

    :cond_59
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_5b
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v4
.end method

.method private static js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 16

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p2, v0}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v1

    array-length v3, p3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_14

    move-wide v6, v4

    goto :goto_33

    :cond_14
    aget-object v0, p3, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7, v1, v2}, Lorg/mozilla/javascript/NativeArray;->toSliceIndex(DJ)J

    move-result-wide v6

    array-length v0, p3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_33

    aget-object v0, p3, v3

    sget-object v8, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v8, :cond_29

    goto :goto_33

    :cond_29
    aget-object p3, p3, v3

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9, v1, v2}, Lorg/mozilla/javascript/NativeArray;->toSliceIndex(DJ)J

    move-result-wide v1

    :cond_33
    :goto_33
    move-wide v8, v6

    :goto_34
    cmp-long p3, v8, v1

    if-gez p3, :cond_49

    invoke-static {p2, v8, v9}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p3, v0, :cond_45

    sub-long v10, v8, v6

    invoke-static {p0, p1, v10, v11, p3}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_45
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_34

    :cond_49
    sub-long/2addr v1, v6

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object p1
.end method

.method private static js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 12

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_29

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v2, p3, v1

    if-eq v0, v2, :cond_29

    aget-object p3, p3, v1

    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v4

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    const/4 p3, 0x2

    new-array v3, p3, [Ljava/lang/Object;

    new-instance p3, Lorg/mozilla/javascript/NativeArray$ElementComparator;

    new-instance v0, Lorg/mozilla/javascript/NativeArray$1;

    move-object v2, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/NativeArray$1;-><init>([Ljava/lang/Object;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    invoke-direct {p3, v0}, Lorg/mozilla/javascript/NativeArray$ElementComparator;-><init>(Ljava/util/Comparator;)V

    goto :goto_2b

    :cond_29
    sget-object p3, Lorg/mozilla/javascript/NativeArray;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    :goto_2b
    invoke-static {p0, p2, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v2

    long-to-int p1, v2

    int-to-long v4, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_57

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_38
    if-eq v2, p1, :cond_44

    int-to-long v3, v2

    invoke-static {p2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_44
    invoke-static {}, Lorg/mozilla/javascript/Sorting;->get()Lorg/mozilla/javascript/Sorting;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Lorg/mozilla/javascript/Sorting;->hybridSort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_4b
    if-ge v1, p1, :cond_56

    int-to-long v2, v1

    aget-object p3, v0, v1

    invoke-static {p0, p2, v2, v3, p3}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_56
    return-object p2

    :cond_57
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.arraylength.too.big"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    goto :goto_63

    :goto_62
    throw p0

    :goto_63
    goto :goto_62
.end method

.method private static js_splice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    instance-of v3, v2, Lorg/mozilla/javascript/NativeArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v5, v3, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    goto :goto_15

    :cond_13
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_15
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    array-length v7, v1

    if-nez v7, :cond_21

    invoke-virtual {v0, v6, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-static {v0, v2, v4}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v8

    aget-object v10, v1, v4

    invoke-static {v10}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Lorg/mozilla/javascript/NativeArray;->toSliceIndex(DJ)J

    move-result-wide v10

    add-int/lit8 v7, v7, -0x1

    array-length v12, v1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3a

    sub-long v12, v8, v10

    move/from16 v16, v5

    goto :goto_59

    :cond_3a
    aget-object v12, v1, v13

    invoke-static {v12}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmpg-double v18, v12, v16

    if-gez v18, :cond_4b

    move/from16 v16, v5

    const-wide/16 v12, 0x0

    goto :goto_57

    :cond_4b
    move/from16 v16, v5

    sub-long v4, v8, v10

    long-to-double v14, v4

    cmpl-double v19, v12, v14

    if-lez v19, :cond_55

    goto :goto_56

    :cond_55
    double-to-long v4, v12

    :goto_56
    move-wide v12, v4

    :goto_57
    add-int/lit8 v7, v7, -0x1

    :goto_59
    add-long v4, v10, v12

    const/16 v14, 0x78

    const-wide/16 v19, 0x1

    const-wide/16 v17, 0x0

    cmp-long v15, v12, v17

    if-eqz v15, :cond_b3

    cmp-long v15, v12, v19

    if-nez v15, :cond_78

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v15

    if-ne v15, v14, :cond_78

    invoke-static {v0, v2, v10, v11}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v21, v3

    move-wide/from16 v22, v8

    goto :goto_bf

    :cond_78
    if-eqz v16, :cond_8f

    sub-long v14, v4, v10

    long-to-int v15, v14

    new-array v14, v15, [Ljava/lang/Object;

    iget-object v1, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-object/from16 v21, v3

    long-to-int v3, v10

    move-wide/from16 v22, v8

    const/4 v8, 0x0

    invoke-static {v1, v3, v14, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v6, v14}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto :goto_bf

    :cond_8f
    move-object/from16 v21, v3

    move-wide/from16 v22, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    move-wide v8, v10

    :goto_99
    cmp-long v1, v8, v4

    if-eqz v1, :cond_ad

    invoke-static {v2, v8, v9}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v3, :cond_aa

    sub-long v14, v8, v10

    invoke-static {v0, v6, v14, v15, v1}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_aa
    add-long v8, v8, v19

    goto :goto_99

    :cond_ad
    sub-long v8, v4, v10

    invoke-static {v0, v6, v8, v9}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    goto :goto_bf

    :cond_b3
    move-object/from16 v21, v3

    move-wide/from16 v22, v8

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    if-ne v1, v14, :cond_c1

    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_bf
    const/4 v1, 0x0

    goto :goto_c6

    :cond_c1
    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    :goto_c6
    int-to-long v8, v7

    sub-long v12, v8, v12

    if-eqz v16, :cond_106

    add-long v14, v22, v12

    const-wide/32 v24, 0x7fffffff

    cmp-long v3, v14, v24

    if-gez v3, :cond_106

    long-to-int v3, v14

    move-object/from16 v1, v21

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v16

    if-eqz v16, :cond_106

    iget-object v0, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v2, v4

    add-long/2addr v8, v10

    long-to-int v9, v8

    sub-long v4, v22, v4

    long-to-int v5, v4

    invoke-static {v0, v2, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v7, :cond_f3

    const/4 v0, 0x2

    iget-object v2, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v4, v10

    move-object/from16 v8, p3

    invoke-static {v8, v0, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f3
    const-wide/16 v4, 0x0

    cmp-long v0, v12, v4

    if-gez v0, :cond_103

    iget-object v0, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-wide/from16 v4, v22

    long-to-int v2, v4

    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_103
    iput-wide v14, v1, Lorg/mozilla/javascript/NativeArray;->length:J

    return-object v6

    :cond_106
    move-object/from16 v8, p3

    move-wide/from16 v14, v22

    const-wide/16 v16, 0x0

    cmp-long v1, v12, v16

    if-lez v1, :cond_12a

    sub-long v16, v14, v19

    move-wide/from16 v21, v10

    move-wide/from16 v9, v16

    :goto_116
    cmp-long v1, v9, v4

    if-ltz v1, :cond_154

    invoke-static {v2, v9, v10}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    move-wide/from16 v16, v4

    add-long v3, v9, v12

    invoke-static {v0, v2, v3, v4, v1}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    sub-long v9, v9, v19

    move-wide/from16 v4, v16

    goto :goto_116

    :cond_12a
    move-wide/from16 v16, v4

    move-wide/from16 v21, v10

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_154

    move-wide/from16 v4, v16

    :goto_136
    cmp-long v1, v4, v14

    if-gez v1, :cond_146

    invoke-static {v2, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    add-long v9, v4, v12

    invoke-static {v0, v2, v9, v10, v1}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long v4, v4, v19

    goto :goto_136

    :cond_146
    sub-long v3, v14, v19

    :goto_148
    add-long v9, v14, v12

    cmp-long v1, v3, v9

    if-ltz v1, :cond_154

    invoke-static {v2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    sub-long v3, v3, v19

    goto :goto_148

    :cond_154
    array-length v1, v8

    sub-int/2addr v1, v7

    const/4 v4, 0x0

    :goto_157
    if-ge v4, v7, :cond_166

    int-to-long v9, v4

    add-long v9, v21, v9

    add-int v3, v4, v1

    aget-object v3, v8, v3

    invoke-static {v0, v2, v9, v10, v3}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_157

    :cond_166
    add-long v8, v14, v12

    invoke-static {v0, v2, v8, v9}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v6
.end method

.method private static js_unshift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    const/4 v0, 0x0

    if-eqz p2, :cond_3d

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v1, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_3d

    iget-wide v1, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v2, v1

    array-length v1, p3

    add-int/2addr v2, v1

    invoke-direct {p2, v2}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length p1, p3

    iget-wide v1, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v2, v1

    invoke-static {p0, v0, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_24
    array-length p0, p3

    if-ge v0, p0, :cond_30

    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object p1, p3, v0

    aput-object p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_30
    iget-wide p0, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    array-length p3, p3

    int-to-long v0, p3

    add-long/2addr p0, v0

    iput-wide p0, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double p0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_3d
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v1

    array-length p2, p3

    array-length v3, p3

    if-lez v3, :cond_6a

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5e

    const-wide/16 v5, 0x1

    sub-long v7, v1, v5

    :goto_4f
    cmp-long v9, v7, v3

    if-ltz v9, :cond_5e

    invoke-static {p1, v7, v8}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    int-to-long v10, p2

    add-long/2addr v10, v7

    invoke-static {p0, p1, v10, v11, v9}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    sub-long/2addr v7, v5

    goto :goto_4f

    :cond_5e
    :goto_5e
    array-length p2, p3

    if-ge v0, p2, :cond_6a

    int-to-long v3, v0

    aget-object p2, p3, v0

    invoke-static {p0, p1, v3, v4, p2}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_6a
    array-length p2, p3

    int-to-long p2, p2

    add-long/2addr v1, p2

    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static reduceMethod(Lorg/mozilla/javascript/Context;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v4

    array-length v6, v3

    if-lez v6, :cond_17

    aget-object v6, v3, v2

    goto :goto_19

    :cond_17
    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_19
    if-eqz v6, :cond_79

    instance-of v7, v6, Lorg/mozilla/javascript/Function;

    if-eqz v7, :cond_79

    check-cast v6, Lorg/mozilla/javascript/Function;

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    const/16 v8, 0x18

    const/4 v9, 0x1

    move/from16 v10, p1

    if-ne v10, v8, :cond_2e

    const/4 v8, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v8, 0x0

    :goto_2f
    array-length v10, v3

    if-le v10, v9, :cond_35

    aget-object v3, v3, v9

    goto :goto_37

    :cond_35
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    :goto_37
    const-wide/16 v10, 0x0

    :goto_39
    cmp-long v12, v10, v4

    if-gez v12, :cond_6d

    const-wide/16 v12, 0x1

    if-eqz v8, :cond_43

    move-wide v14, v10

    goto :goto_46

    :cond_43
    sub-long v14, v4, v12

    sub-long/2addr v14, v10

    :goto_46
    invoke-static {v1, v14, v15}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v12, v13, :cond_51

    :goto_4e
    const-wide/16 v12, 0x1

    goto :goto_6b

    :cond_51
    if-ne v3, v13, :cond_55

    move-object v3, v12

    goto :goto_4e

    :cond_55
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v2

    aput-object v12, v13, v9

    const/4 v3, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v13, v3

    const/4 v3, 0x3

    aput-object v1, v13, v3

    invoke-interface {v6, v0, v7, v7, v13}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4e

    :goto_6b
    add-long/2addr v10, v12

    goto :goto_39

    :cond_6d
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v0, :cond_72

    return-object v3

    :cond_72
    const-string v0, "msg.empty.array.reduce"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_79
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_7f

    :goto_7e
    throw v0

    :goto_7f
    goto :goto_7e
.end method

.method private static setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .registers 7

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p2, v0

    if-lez p0, :cond_f

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_13

    :cond_f
    long-to-int p0, p2

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    :goto_13
    return-void
.end method

.method private setLength(Ljava/lang/Object;)V
    .registers 12

    iget v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v2

    long-to-double v4, v2

    cmpl-double p1, v4, v0

    if-nez p1, :cond_94

    iget-boolean p1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    iget-wide v6, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p1, v2, v6

    if-gez p1, :cond_2b

    iget-object p1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v0, v2

    array-length v1, p1

    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void

    :cond_2b
    const-wide/32 v8, 0x55555554

    cmp-long p1, v2, v8

    if-gez p1, :cond_48

    long-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L  # 1.5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    cmpg-double p1, v4, v6

    if-gez p1, :cond_48

    long-to-int p1, v2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result p1

    if-eqz p1, :cond_48

    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void

    :cond_48
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :cond_4a
    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_91

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1000

    cmp-long p1, v4, v6

    if-lez p1, :cond_83

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object p1

    :goto_5b
    array-length v1, p1

    if-ge v0, v1, :cond_91

    aget-object v1, p1, v0

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_72

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_80

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->delete(Ljava/lang/String;)V

    goto :goto_80

    :cond_72
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    cmp-long v6, v4, v2

    if-ltz v6, :cond_80

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/NativeArray;->delete(I)V

    :cond_80
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_83
    move-wide v0, v2

    :goto_84
    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_91

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_84

    :cond_91
    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void

    :cond_94
    const-string p1, "msg.arraylength.bad"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    goto :goto_a0

    :goto_9f
    throw p1

    :goto_a0
    goto :goto_9f
.end method

.method private static setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .registers 4

    long-to-double p2, p2

    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    const-string p2, "length"

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method static setMaximumInitialCapacity(I)V
    .registers 1

    sput p0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return-void
.end method

.method private static setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .registers 6

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p4, v0, :cond_8

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    goto :goto_b

    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :goto_b
    return-void
.end method

.method private static toArrayIndex(D)J
    .registers 7

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v0

    long-to-double v2, v0

    cmpl-double v4, v2, p0

    if-nez v4, :cond_19

    const-wide p0, 0xffffffffL

    cmp-long v2, v0, p0

    if-eqz v2, :cond_19

    return-wide v0

    :cond_19
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static toArrayIndex(Ljava/lang/Object;)J
    .registers 3

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_b
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(D)J

    move-result-wide v0

    return-wide v0

    :cond_1a
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static toArrayIndex(Ljava/lang/String;)J
    .registers 4

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static toDenseIndex(Ljava/lang/Object;)I
    .registers 5

    invoke-static {p0}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v2, v0

    if-gtz p0, :cond_13

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gez p0, :cond_13

    long-to-int p0, v0

    goto :goto_14

    :cond_13
    const/4 p0, -0x1

    :goto_14
    return p0
.end method

.method private static toSliceIndex(DJ)J
    .registers 7

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_12

    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p0, p2

    cmpg-double p2, p0, v0

    if-gez p2, :cond_18

    const-wide/16 p2, 0x0

    goto :goto_19

    :cond_12
    long-to-double v0, p2

    cmpl-double v2, p0, v0

    if-lez v2, :cond_18

    goto :goto_19

    :cond_18
    double-to-long p2, p0

    :goto_19
    return-wide p2
.end method

.method private static toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p3, :cond_1e

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ", "

    goto :goto_20

    :cond_1e
    const-string v7, ","

    :goto_20
    iget-object v8, v1, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    if-nez v8, :cond_30

    new-instance v8, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v10, 0x1f

    invoke-direct {v8, v10}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v8, v1, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto :goto_35

    :cond_30
    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x0

    :goto_35
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v8, :cond_b4

    :try_start_3a
    iget-object v8, v1, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v8, v2, v3}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    if-eqz p3, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v8

    const/16 v14, 0x96

    if-ge v8, v14, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v8, 0x0

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v8, 0x1

    :goto_4d
    move-wide v14, v12

    const/16 v16, 0x0

    :goto_50
    cmp-long v17, v14, v4

    if-gez v17, :cond_a6

    cmp-long v16, v14, v12

    if-lez v16, :cond_5b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    invoke-static {v2, v14, v15}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v3

    sget-object v9, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v9, :cond_9d

    if-eqz v8, :cond_6c

    if-eqz v3, :cond_9d

    sget-object v9, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v3, v9, :cond_6c

    goto :goto_9d

    :cond_6c
    if-eqz p3, :cond_76

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9a

    :cond_76
    instance-of v9, v3, Ljava/lang/String;

    if-eqz v9, :cond_80

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9a

    :cond_80
    if-eqz p4, :cond_93

    const-string/jumbo v9, "toLocaleString"

    invoke-static {v3, v9, v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    sget-object v12, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v9, v12}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_93
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9a
    const/16 v16, 0x1

    goto :goto_9f

    :cond_9d
    :goto_9d
    const/16 v16, 0x0

    :goto_9f
    const-wide/16 v12, 0x1

    add-long/2addr v14, v12

    const/4 v3, 0x0

    const-wide/16 v12, 0x0

    goto :goto_50

    :cond_a6
    iget-object v0, v1, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->remove(Ljava/lang/Object;)V
    :try_end_ab
    .catchall {:try_start_3a .. :try_end_ab} :catchall_ae

    move/from16 v3, v16

    goto :goto_b7

    :catchall_ae
    move-exception v0

    if-eqz v10, :cond_b3

    iput-object v11, v1, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    :cond_b3
    throw v0

    :cond_b4
    const/4 v3, 0x0

    const-wide/16 v14, 0x0

    :goto_b7
    if-eqz v10, :cond_bb

    iput-object v11, v1, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    :cond_bb
    if-eqz p3, :cond_d0

    if-nez v3, :cond_cb

    const-wide/16 v0, 0x0

    cmp-long v2, v14, v0

    if-lez v2, :cond_cb

    const-string v0, ", ]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    :cond_cb
    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d0
    :goto_d0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/NativeArray;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method protected defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V
    .registers 10

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    aget-object v2, v0, v1

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_18

    aget-object v2, v0, v1

    invoke-virtual {p0, v1, p0, v2}, Lorg/mozilla/javascript/NativeArray;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    invoke-static {p2}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/Object;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2a

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    :cond_2a
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V

    return-void
.end method

.method public delete(I)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_22

    if-ltz p1, :cond_22

    array-length v0, v0

    if-ge p1, v0, :cond_22

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isSealed()Z

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_1b
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object v1, v0, p1

    goto :goto_25

    :cond_22
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    :goto_25
    return-void
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    :goto_11
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_108

    packed-switch v0, :pswitch_data_13c

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Array.prototype has no method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_34  #0x1f
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_copyWithin(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_39  #0x1e
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_includes(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_3e  #0x1d
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p4, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->ENTRIES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p2, p3, p1, p4}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p2

    :pswitch_4a  #0x1c, 0x20
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p4, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p2, p3, p1, p4}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p2

    :pswitch_56  #0x1b
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p4, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->KEYS:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p2, p3, p1, p4}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p2

    :pswitch_62  #0x1a
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_fill(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_67  #0x18, 0x19
    invoke-static {p2, v0, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->reduceMethod(Lorg/mozilla/javascript/Context;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6c  #0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17
    invoke-static {p2, p1, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_71  #0x10
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_76  #0xf
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7b  #0xe
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_80  #0xd
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_concat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_85  #0xc
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_splice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8a  #0xb
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_unshift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8f  #0xa
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_shift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_94  #0x9
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_pop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_99  #0x8
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_push(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9e  #0x7
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_a3  #0x6
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_a8  #0x5
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_ad  #0x4
    invoke-static {p2, p3, p4, v1, v2}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b2  #0x3
    invoke-static {p2, p3, p4, v2, v1}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b7  #0x2
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    invoke-static {p2, p3, p4, p1, v2}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_c1  #0x1
    if-nez p4, :cond_c4

    goto :goto_c5

    :cond_c4
    const/4 v1, 0x0

    :goto_c5
    if-nez v1, :cond_cc

    invoke-virtual {p1, p2, p3, p5}, Lorg/mozilla/javascript/BaseFunction;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_cc
    invoke-static {p2, p3, p5}, Lorg/mozilla/javascript/NativeArray;->jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_d1  #0xffffffe7, 0xffffffe8, 0xffffffe9, 0xffffffea, 0xffffffeb, 0xffffffec, 0xffffffed, 0xffffffee, 0xffffffef, 0xfffffff0, 0xfffffff1, 0xfffffff2, 0xfffffff3, 0xfffffff4, 0xfffffff5, 0xfffffff6, 0xfffffff7, 0xfffffff8, 0xfffffff9, 0xfffffffa, 0xfffffffb
    array-length v3, p5

    if-lez v3, :cond_e9

    aget-object p4, p5, v2

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    array-length v3, p5

    sub-int/2addr v3, v1

    new-array v1, v3, [Ljava/lang/Object;

    :goto_de
    if-ge v2, v3, :cond_e8

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p5, v4

    aput-object v5, v1, v2

    move v2, v4

    goto :goto_de

    :cond_e8
    move-object p5, v1

    :cond_e9
    neg-int v0, v0

    goto/16 :goto_11

    :pswitch_ec  #0xffffffe6
    array-length p1, p5

    if-lez p1, :cond_f8

    aget-object p1, p5, v2

    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f8

    goto :goto_f9

    :cond_f8
    const/4 v1, 0x0

    :goto_f9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_fe  #0xffffffe5
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_of(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_103  #0xffffffe4
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_from(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_108
    .packed-switch -0x1c
        :pswitch_103  #ffffffe4
        :pswitch_fe  #ffffffe5
        :pswitch_ec  #ffffffe6
        :pswitch_d1  #ffffffe7
        :pswitch_d1  #ffffffe8
        :pswitch_d1  #ffffffe9
        :pswitch_d1  #ffffffea
        :pswitch_d1  #ffffffeb
        :pswitch_d1  #ffffffec
        :pswitch_d1  #ffffffed
        :pswitch_d1  #ffffffee
        :pswitch_d1  #ffffffef
        :pswitch_d1  #fffffff0
        :pswitch_d1  #fffffff1
        :pswitch_d1  #fffffff2
        :pswitch_d1  #fffffff3
        :pswitch_d1  #fffffff4
        :pswitch_d1  #fffffff5
        :pswitch_d1  #fffffff6
        :pswitch_d1  #fffffff7
        :pswitch_d1  #fffffff8
        :pswitch_d1  #fffffff9
        :pswitch_d1  #fffffffa
        :pswitch_d1  #fffffffb
    .end packed-switch

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_c1  #00000001
        :pswitch_b7  #00000002
        :pswitch_b2  #00000003
        :pswitch_ad  #00000004
        :pswitch_a8  #00000005
        :pswitch_a3  #00000006
        :pswitch_9e  #00000007
        :pswitch_99  #00000008
        :pswitch_94  #00000009
        :pswitch_8f  #0000000a
        :pswitch_8a  #0000000b
        :pswitch_85  #0000000c
        :pswitch_80  #0000000d
        :pswitch_7b  #0000000e
        :pswitch_76  #0000000f
        :pswitch_71  #00000010
        :pswitch_6c  #00000011
        :pswitch_6c  #00000012
        :pswitch_6c  #00000013
        :pswitch_6c  #00000014
        :pswitch_6c  #00000015
        :pswitch_6c  #00000016
        :pswitch_6c  #00000017
        :pswitch_67  #00000018
        :pswitch_67  #00000019
        :pswitch_62  #0000001a
        :pswitch_56  #0000001b
        :pswitch_4a  #0000001c
        :pswitch_3e  #0000001d
        :pswitch_39  #0000001e
        :pswitch_34  #0000001f
        :pswitch_4a  #00000020
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .registers 9

    sget-object v6, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v3, -0x5

    const-string v4, "join"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x6

    const-string v4, "reverse"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x7

    const-string/jumbo v4, "sort"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x8

    const-string v4, "push"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x9

    const-string v4, "pop"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xa

    const-string/jumbo v4, "shift"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xb

    const-string/jumbo v4, "unshift"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xc

    const-string/jumbo v4, "splice"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xd

    const-string v4, "concat"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xe

    const-string/jumbo v4, "slice"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xf

    const-string v4, "indexOf"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x10

    const-string v4, "lastIndexOf"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x11

    const-string v4, "every"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x12

    const-string v4, "filter"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x13

    const-string v4, "forEach"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x14

    const-string v4, "map"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x15

    const-string/jumbo v4, "some"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x16

    const-string v4, "find"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x17

    const-string v4, "findIndex"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x18

    const-string v4, "reduce"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x19

    const-string v4, "reduceRight"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1a

    const-string v4, "isArray"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1b

    const-string v4, "of"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1c

    const-string v4, "from"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 3

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget p1, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    :cond_10
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v2, :cond_14c

    const/16 v6, 0x6f

    const/16 v7, 0x76

    const/16 v8, 0x66

    const/16 v9, 0x63

    const/16 v10, 0x73

    const/16 v11, 0x69

    const/16 v12, 0x6c

    const/16 v13, 0x72

    packed-switch v0, :pswitch_data_15c

    goto/16 :goto_149

    :pswitch_21  #0xb
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_2c

    const-string v0, "constructor"

    const/4 v1, 0x1

    goto/16 :goto_14f

    :cond_2c
    if-ne v0, v12, :cond_34

    const/16 v1, 0x10

    const-string v0, "lastIndexOf"

    goto/16 :goto_14f

    :cond_34
    if-ne v0, v13, :cond_149

    const/16 v1, 0x19

    const-string v0, "reduceRight"

    goto/16 :goto_14f

    :pswitch_3c  #0xa
    const/16 v1, 0x1f

    const-string v0, "copyWithin"

    goto/16 :goto_14f

    :pswitch_42  #0x9
    const/16 v1, 0x17

    const-string v0, "findIndex"

    goto/16 :goto_14f

    :pswitch_48  #0x8
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_54

    const/16 v1, 0x1e

    const-string v0, "includes"

    goto/16 :goto_14f

    :cond_54
    if-ne v0, v6, :cond_5c

    const/4 v1, 0x4

    const-string/jumbo v0, "toSource"

    goto/16 :goto_14f

    :cond_5c
    const/16 v1, 0x74

    if-ne v0, v1, :cond_149

    const-string/jumbo v0, "toString"

    const/4 v1, 0x2

    goto/16 :goto_14f

    :pswitch_66  #0x7
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_92

    if-eq v0, v8, :cond_8c

    if-eq v0, v11, :cond_86

    if-eq v0, v13, :cond_81

    const/16 v1, 0x75

    if-eq v0, v1, :cond_7a

    goto/16 :goto_149

    :cond_7a
    const/16 v1, 0xb

    const-string/jumbo v0, "unshift"

    goto/16 :goto_14f

    :cond_81
    const/4 v1, 0x6

    const-string v0, "reverse"

    goto/16 :goto_14f

    :cond_86
    const/16 v1, 0xf

    const-string v0, "indexOf"

    goto/16 :goto_14f

    :cond_8c
    const/16 v1, 0x13

    const-string v0, "forEach"

    goto/16 :goto_14f

    :cond_92
    const/16 v1, 0x1d

    const-string v0, "entries"

    goto/16 :goto_14f

    :pswitch_98  #0x6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v9, :cond_c2

    if-eq v0, v8, :cond_bc

    if-eq v0, v7, :cond_b5

    if-eq v0, v13, :cond_af

    if-eq v0, v10, :cond_a8

    goto/16 :goto_149

    :cond_a8
    const/16 v1, 0xc

    const-string/jumbo v0, "splice"

    goto/16 :goto_14f

    :cond_af
    const/16 v1, 0x18

    const-string v0, "reduce"

    goto/16 :goto_14f

    :cond_b5
    const/16 v1, 0x1c

    const-string/jumbo v0, "values"

    goto/16 :goto_14f

    :cond_bc
    const/16 v1, 0x12

    const-string v0, "filter"

    goto/16 :goto_14f

    :cond_c2
    const/16 v1, 0xd

    const-string v0, "concat"

    goto/16 :goto_14f

    :pswitch_c8  #0x5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_d7

    const/16 v1, 0xa

    const-string/jumbo v0, "shift"

    goto/16 :goto_14f

    :cond_d7
    if-ne v0, v12, :cond_e0

    const-string/jumbo v0, "slice"

    const/16 v1, 0xe

    goto/16 :goto_14f

    :cond_e0
    if-ne v0, v7, :cond_149

    const/16 v1, 0x11

    const-string v0, "every"

    goto/16 :goto_14f

    :pswitch_e8  #0x4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v11, :cond_119

    const/16 v1, 0x79

    if-eq v0, v1, :cond_114

    if-eq v0, v13, :cond_10f

    if-eq v0, v10, :cond_10a

    packed-switch v0, :pswitch_data_172

    goto :goto_149

    :pswitch_fa  #0x6e
    const/16 v1, 0x16

    const-string v0, "find"

    goto :goto_14f

    :pswitch_ff  #0x6d
    const/16 v1, 0x15

    const-string/jumbo v0, "some"

    goto :goto_14f

    :pswitch_105  #0x6c
    const/16 v1, 0x1a

    const-string v0, "fill"

    goto :goto_14f

    :cond_10a
    const/16 v1, 0x8

    const-string v0, "push"

    goto :goto_14f

    :cond_10f
    const/4 v1, 0x7

    const-string/jumbo v0, "sort"

    goto :goto_14f

    :cond_114
    const/16 v1, 0x1b

    const-string v0, "keys"

    goto :goto_14f

    :cond_119
    const/4 v1, 0x5

    const-string v0, "join"

    goto :goto_14f

    :pswitch_11d  #0x3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6d

    const/16 v2, 0x70

    if-ne v0, v1, :cond_138

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_149

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_149

    const/16 v5, 0x14

    goto :goto_15b

    :cond_138
    if-ne v0, v2, :cond_149

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_149

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_149

    const/16 v5, 0x9

    goto :goto_15b

    :cond_149
    :goto_149
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_14f

    :cond_14c
    const-string/jumbo v0, "toLocaleString"

    :goto_14f
    if-eqz v0, :cond_15a

    if-eq v0, p1, :cond_15a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15a

    goto :goto_15b

    :cond_15a
    move v5, v1

    :goto_15b
    return v5

    :pswitch_data_15c
    .packed-switch 0x3
        :pswitch_11d  #00000003
        :pswitch_e8  #00000004
        :pswitch_c8  #00000005
        :pswitch_98  #00000006
        :pswitch_66  #00000007
        :pswitch_48  #00000008
        :pswitch_42  #00000009
        :pswitch_3c  #0000000a
        :pswitch_21  #0000000b
    .end packed-switch

    :pswitch_data_172
    .packed-switch 0x6c
        :pswitch_105  #0000006c
        :pswitch_ff  #0000006d
        :pswitch_fa  #0000006e
    .end packed-switch
.end method

.method protected findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x20

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/NativeArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_11

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_1d

    if-ltz p1, :cond_1d

    array-length v1, v0

    if-ge p1, v1, :cond_1d

    aget-object p1, v0, p1

    return-object p1

    :cond_1d
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(J)Ljava/lang/Object;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_26

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_26

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, p2, :cond_24

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_19

    goto :goto_24

    :cond_19
    instance-of p2, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz p2, :cond_23

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_23
    return-object p1

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return-object p1

    :cond_26
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getAttributes(I)I
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_11

    if-ltz p1, :cond_11

    array-length v1, v0

    if-ge p1, v1, :cond_11

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Array"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_17

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_17

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_17
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIds(ZZ)[Ljava/lang/Object;
    .registers 10

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-nez p2, :cond_9

    return-object p1

    :cond_9
    array-length p2, p2

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v2, p2

    cmp-long v4, v2, v0

    if-lez v4, :cond_12

    long-to-int p2, v0

    :cond_12
    if-nez p2, :cond_15

    return-object p1

    :cond_15
    array-length v0, p1

    add-int v1, p2, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1d
    if-eq v3, p2, :cond_32

    iget-object v5, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v5, v5, v3

    sget-object v6, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v5, v6, :cond_2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_32
    if-eq v4, p2, :cond_3c

    add-int p2, v4, v0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v1, v2, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p2

    :cond_3c
    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getIndexIds()Ljava/util/List;
    .registers 9

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_2f

    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_2c

    int-to-double v6, v5

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2f
    return-object v1
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "length"

    return-object p1

    :cond_6
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLength()J
    .registers 3

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-wide v0
.end method

.method protected getMaxInstanceId()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_1c

    invoke-static {p2}, Lorg/mozilla/javascript/NativeArray;->toDenseIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1c

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    aget-object v2, v1, v0

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_1c

    aget-object p1, v1, v0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeArray;->defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 6

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_11
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_22

    if-ltz p1, :cond_22

    array-length v2, v0

    if-ge p1, v2, :cond_22

    aget-object p1, v0, p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, p2, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    :cond_22
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2b

    long-to-int v1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_19

    :goto_d
    if-ge v0, v1, :cond_29

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    :goto_19
    if-ge v0, v1, :cond_29

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    return v0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_29
    const/4 p1, -0x1

    return p1

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_32

    :goto_31
    throw p1

    :goto_32
    goto :goto_31
.end method

.method protected initPrototypeId(I)V
    .registers 15

    const/16 v0, 0x20

    if-ne p1, v0, :cond_11

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    const/4 v6, 0x0

    const-string v5, "[Symbol.iterator]"

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_11
    const/4 v11, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_9c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x1f
    const-string v1, "copyWithin"

    goto :goto_67

    :pswitch_25  #0x1e
    const-string v0, "includes"

    goto/16 :goto_92

    :pswitch_29  #0x1d
    const-string v0, "entries"

    goto/16 :goto_8d

    :pswitch_2d  #0x1c
    const-string/jumbo v0, "values"

    goto/16 :goto_8d

    :pswitch_32  #0x1b
    const-string v0, "keys"

    goto/16 :goto_8d

    :pswitch_36  #0x1a
    const-string v0, "fill"

    goto/16 :goto_92

    :pswitch_3a  #0x19
    const-string v0, "reduceRight"

    goto/16 :goto_92

    :pswitch_3e  #0x18
    const-string v0, "reduce"

    goto :goto_92

    :pswitch_41  #0x17
    const-string v0, "findIndex"

    goto :goto_92

    :pswitch_44  #0x16
    const-string v0, "find"

    goto :goto_92

    :pswitch_47  #0x15
    const-string/jumbo v0, "some"

    goto :goto_92

    :pswitch_4b  #0x14
    const-string v0, "map"

    goto :goto_92

    :pswitch_4e  #0x13
    const-string v0, "forEach"

    goto :goto_92

    :pswitch_51  #0x12
    const-string v0, "filter"

    goto :goto_92

    :pswitch_54  #0x11
    const-string v0, "every"

    goto :goto_92

    :pswitch_57  #0x10
    const-string v0, "lastIndexOf"

    goto :goto_92

    :pswitch_5a  #0xf
    const-string v0, "indexOf"

    goto :goto_92

    :pswitch_5d  #0xe
    const-string/jumbo v1, "slice"

    goto :goto_67

    :pswitch_61  #0xd
    const-string v0, "concat"

    goto :goto_92

    :pswitch_64  #0xc
    const-string/jumbo v1, "splice"

    :goto_67
    move-object v10, v1

    const/4 v12, 0x2

    goto :goto_94

    :pswitch_6a  #0xb
    const-string/jumbo v0, "unshift"

    goto :goto_92

    :pswitch_6e  #0xa
    const-string/jumbo v0, "shift"

    goto :goto_8d

    :pswitch_72  #0x9
    const-string v0, "pop"

    goto :goto_8d

    :pswitch_75  #0x8
    const-string v0, "push"

    goto :goto_92

    :pswitch_78  #0x7
    const-string/jumbo v0, "sort"

    goto :goto_92

    :pswitch_7c  #0x6
    const-string v0, "reverse"

    goto :goto_8d

    :pswitch_7f  #0x5
    const-string v0, "join"

    goto :goto_92

    :pswitch_82  #0x4
    const-string/jumbo v0, "toSource"

    goto :goto_8d

    :pswitch_86  #0x3
    const-string/jumbo v0, "toLocaleString"

    goto :goto_8d

    :pswitch_8a  #0x2
    const-string/jumbo v0, "toString"

    :goto_8d
    move-object v10, v0

    const/4 v12, 0x0

    goto :goto_94

    :pswitch_90  #0x1
    const-string v0, "constructor"

    :goto_92
    move-object v10, v0

    const/4 v12, 0x1

    :goto_94
    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    move-object v7, p0

    move v9, p1

    invoke-virtual/range {v7 .. v12}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_90  #00000001
        :pswitch_8a  #00000002
        :pswitch_86  #00000003
        :pswitch_82  #00000004
        :pswitch_7f  #00000005
        :pswitch_7c  #00000006
        :pswitch_78  #00000007
        :pswitch_75  #00000008
        :pswitch_72  #00000009
        :pswitch_6e  #0000000a
        :pswitch_6a  #0000000b
        :pswitch_64  #0000000c
        :pswitch_61  #0000000d
        :pswitch_5d  #0000000e
        :pswitch_5a  #0000000f
        :pswitch_57  #00000010
        :pswitch_54  #00000011
        :pswitch_51  #00000012
        :pswitch_4e  #00000013
        :pswitch_4b  #00000014
        :pswitch_47  #00000015
        :pswitch_44  #00000016
        :pswitch_41  #00000017
        :pswitch_3e  #00000018
        :pswitch_3a  #00000019
        :pswitch_36  #0000001a
        :pswitch_32  #0000001b
        :pswitch_2d  #0000001c
        :pswitch_29  #0000001d
        :pswitch_25  #0000001e
        :pswitch_22  #0000001f
    .end packed-switch
.end method

.method public isEmpty()Z
    .registers 6

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public jsGet_length()J
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 7

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2e

    long-to-int v1, v0

    if-nez p1, :cond_1a

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_2c

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_17

    return v1

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    :goto_1c
    if-ltz v1, :cond_2c

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    return v1

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_2c
    const/4 p1, -0x1

    return p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_35

    :goto_34
    throw p1

    :goto_35
    goto :goto_34
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 7

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2b

    long-to-int v1, v0

    if-ltz p1, :cond_14

    if-gt p1, v1, :cond_14

    new-instance v0, Lorg/mozilla/javascript/NativeArray$2;

    invoke-direct {v0, p0, p1, v1}, Lorg/mozilla/javascript/NativeArray$2;-><init>(Lorg/mozilla/javascript/NativeArray;II)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 14

    const-wide/16 v0, 0x1

    const/4 v2, 0x1

    if-ne p2, p0, :cond_62

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isSealed()Z

    move-result v3

    if-nez v3, :cond_62

    iget-object v3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v3, :cond_62

    if-ltz p1, :cond_62

    iget-boolean v3, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v3, :cond_1c

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v3

    if-nez v3, :cond_62

    :cond_1c
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v3

    if-nez v3, :cond_2a

    iget-wide v3, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v5, p1

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2a

    return-void

    :cond_2a
    iget-object v3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v4, v3

    if-ge p1, v4, :cond_3c

    aput-object p3, v3, p1

    iget-wide p2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v2, p1

    cmp-long p1, p2, v2

    if-gtz p1, :cond_3b

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    :cond_3b
    return-void

    :cond_3c
    iget-boolean v4, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v4, :cond_5f

    int-to-double v4, p1

    array-length v3, v3

    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff8000000000000L  # 1.5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_5f

    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-object p2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aput-object p3, p2, p1

    int-to-long p1, p1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void

    :cond_5f
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :cond_62
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    if-ne p2, p0, :cond_76

    iget p2, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    and-int/2addr p2, v2

    if-nez p2, :cond_76

    iget-wide p2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v2, p1

    cmp-long p1, p2, v2

    if-gtz p1, :cond_76

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    :cond_76
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    if-ne p2, p0, :cond_17

    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_17

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :cond_17
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method setDenseOnly(Z)V
    .registers 3

    if-eqz p1, :cond_d

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v0, :cond_7

    goto :goto_d

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_d
    :goto_d
    iput-boolean p1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    return-void
.end method

.method protected setInstanceIdAttributes(II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iput p2, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    :cond_5
    return-void
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;->setLength(Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    return-void
.end method

.method public size()I
    .registers 6

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_b

    long-to-int v1, v0

    return v1

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_29

    long-to-int v1, v0

    array-length v0, p1

    if-lt v0, v1, :cond_e

    goto :goto_1c

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_1c
    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v1, :cond_28

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_28
    return-object p1

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method
