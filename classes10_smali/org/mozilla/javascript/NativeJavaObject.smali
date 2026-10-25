.class public Lorg/mozilla/javascript/NativeJavaObject;
.super Ljava/lang/Object;
.source "NativeJavaObject.java"

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Lorg/mozilla/javascript/SymbolScriptable;
.implements Lorg/mozilla/javascript/Wrapper;
.implements Ljava/io/Serializable;


# static fields
.field private static final COERCED_INTERFACE_KEY:Ljava/lang/Object;

.field static final CONVERSION_NONE:B = 0x63t

.field static final CONVERSION_NONTRIVIAL:B = 0x0t

.field static final CONVERSION_TRIVIAL:B = 0x1t

.field private static final JSTYPE_BOOLEAN:I = 0x2

.field private static final JSTYPE_JAVA_ARRAY:I = 0x7

.field private static final JSTYPE_JAVA_CLASS:I = 0x5

.field private static final JSTYPE_JAVA_OBJECT:I = 0x6

.field private static final JSTYPE_NULL:I = 0x1

.field private static final JSTYPE_NUMBER:I = 0x3

.field private static final JSTYPE_OBJECT:I = 0x8

.field private static final JSTYPE_STRING:I = 0x4

.field private static final JSTYPE_UNDEFINED:I = 0x0

.field private static adapter_readAdapterObject:Ljava/lang/reflect/Method; = null

.field private static adapter_writeAdapterObject:Ljava/lang/reflect/Method; = null

.field private static final serialVersionUID:J = -0x606e5a61ca3bce1fL


# instance fields
.field private transient fieldAndMethods:Ljava/util/Map;

.field protected transient isAdapter:Z

.field protected transient javaObject:Ljava/lang/Object;

.field protected transient members:Lorg/mozilla/javascript/JavaMembers;

.field protected parent:Lorg/mozilla/javascript/Scriptable;

.field protected prototype:Lorg/mozilla/javascript/Scriptable;

.field protected transient staticType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "Coerced Interface"

    sput-object v0, Lorg/mozilla/javascript/NativeJavaObject;->COERCED_INTERFACE_KEY:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "org.mozilla.javascript.JavaAdapter"

    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_40

    :try_start_f
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "java.io.ObjectOutputStream"

    invoke-static {v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string/jumbo v2, "writeAdapterObject"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    aput-object v2, v0, v3

    const-string v2, "java.io.ObjectInputStream"

    invoke-static {v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "readAdapterObject"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_3a} :catch_3b

    goto :goto_40

    :catch_3b
    const/4 v0, 0x0

    sput-object v0, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;

    :cond_40
    :goto_40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/NativeJavaObject;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    iput-boolean p4, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaObject;->initMembers()V

    return-void
.end method

.method public static canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p0

    const/16 p1, 0x63

    if-ge p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_113

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_e

    goto/16 :goto_113

    :cond_e
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_105

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_105

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1c

    goto/16 :goto_105

    :cond_1c
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->FloatClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_b1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_26

    goto/16 :goto_b1

    :cond_26
    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    if-eq p0, v4, :cond_9c

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_30

    goto/16 :goto_9c

    :cond_30
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->LongClass:Ljava/lang/Class;

    if-eq p0, v6, :cond_80

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_39

    goto :goto_80

    :cond_39
    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    if-eq p0, v8, :cond_6a

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_42

    goto :goto_6a

    :cond_42
    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    if-eq p0, v3, :cond_54

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4b

    goto :goto_54

    :cond_4b
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_54
    :goto_54
    if-ne v0, v3, :cond_57

    return-object p1

    :cond_57
    const-wide/high16 v4, -0x3fa0000000000000L  # -128.0

    const-wide v6, 0x405fc00000000000L  # 127.0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    long-to-int p1, p0

    int-to-byte p0, p1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_6a
    :goto_6a
    if-ne v0, v8, :cond_6d

    return-object p1

    :cond_6d
    const-wide/high16 v9, -0x3f20000000000000L  # -32768.0

    const-wide v11, 0x40dfffc000000000L  # 32767.0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    long-to-int p1, p0

    int-to-short p0, p1

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_80
    :goto_80
    if-ne v0, v6, :cond_83

    return-object p1

    :cond_83
    const-wide v0, 0x43dfffffffffffffL  # 9.2233720368547748E18

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    const-wide/high16 v0, -0x3c20000000000000L  # -9.223372036854776E18

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_9c
    :goto_9c
    if-ne v0, v4, :cond_9f

    return-object p1

    :cond_9f
    const-wide/high16 v5, -0x3e20000000000000L  # -2.147483648E9

    const-wide v7, 0x41dfffffffc00000L  # 2.147483647E9

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_b1
    :goto_b1
    if-ne v0, v1, :cond_b4

    return-object p1

    :cond_b4
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_ff

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_cb

    goto :goto_ff

    :cond_cb
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x36a0000000000000L  # 1.401298464324817E-45

    cmpg-double v6, v2, v4

    if-gez v6, :cond_e2

    cmpl-double v2, p0, v0

    if-lez v2, :cond_db

    const/4 p0, 0x0

    goto :goto_dd

    :cond_db
    const/high16 p0, -0x80000000

    :goto_dd
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_e2
    const-wide v4, 0x47efffffe0000000L  # 3.4028234663852886E38

    cmpl-double v6, v2, v4

    if-lez v6, :cond_f9

    cmpl-double v2, p0, v0

    if-lez v2, :cond_f2

    const/high16 p0, 0x7f800000  # Float.POSITIVE_INFINITY

    goto :goto_f4

    :cond_f2
    const/high16 p0, -0x800000  # Float.NEGATIVE_INFINITY

    :goto_f4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_f9
    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_ff
    :goto_ff
    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_105
    :goto_105
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    if-ne v0, p0, :cond_10a

    goto :goto_112

    :cond_10a
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_112
    return-object p1

    :cond_113
    :goto_113
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_118

    return-object p1

    :cond_118
    const-wide/16 v2, 0x0

    const-wide v4, 0x40efffe000000000L  # 65535.0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    long-to-int p1, p0

    int-to-char p0, p1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static coerceType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_9

    return-object p1

    :cond_9
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getJSTypeCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1de

    goto/16 :goto_1dc

    :pswitch_13  #0x8
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_29
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2e
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-object p1

    :cond_35
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->DateClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_4a

    instance-of v0, p1, Lorg/mozilla/javascript/NativeDate;

    if-eqz v0, :cond_4a

    check-cast p1, Lorg/mozilla/javascript/NativeDate;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeDate;->getJSTimeValue()D

    move-result-wide p0

    new-instance v0, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_4a
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7c

    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_7c

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    long-to-int v5, v2

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    :goto_64
    int-to-long v6, v1

    cmp-long v8, v6, v2

    if-gez v8, :cond_7b

    :try_start_69
    invoke-virtual {v0, v1, v0}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/mozilla/javascript/NativeJavaObject;->coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v1, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_74
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_69 .. :try_end_74} :catch_75

    goto :goto_78

    :catch_75
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_7b
    return-object v5

    :cond_7c
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_92

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    return-object p1

    :cond_8d
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1dc

    :cond_92
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_ab

    instance-of v0, p1, Lorg/mozilla/javascript/NativeObject;

    if-nez v0, :cond_a4

    instance-of v0, p1, Lorg/mozilla/javascript/NativeFunction;

    if-nez v0, :cond_a4

    instance-of v0, p1, Lorg/mozilla/javascript/ArrowFunction;

    if-eqz v0, :cond_ab

    :cond_a4
    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->createInterfaceAdapter(Ljava/lang/Class;Lorg/mozilla/javascript/ScriptableObject;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_ab
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1dc

    :pswitch_b0  #0x6, 0x7
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_ba

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_ba
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_cc

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_c7

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_c7
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_cc
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_d5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d5
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    return-object p1

    :cond_dc
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1dc

    :pswitch_e1  #0x5
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_eb

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_eb
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_102

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_f4

    goto :goto_102

    :cond_f4
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_fd

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_fd
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1dc

    :cond_102
    :goto_102
    return-object p1

    :pswitch_103  #0x4
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_14b

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    goto :goto_14b

    :cond_10e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_133

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_117

    goto :goto_133

    :cond_117
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_121

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_129

    :cond_121
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12e

    :cond_129
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_12e
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1dc

    :cond_133
    :goto_133
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_146

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_146
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14b
    :goto_14b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_150  #0x3
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_159

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_159
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_18a

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p0

    if-eqz p0, :cond_183

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_183

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-nez p0, :cond_183

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_183
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_18a
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_194

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_19c

    :cond_194
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    :cond_19c
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1a1
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1dc

    :pswitch_1a5  #0x2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1bf

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_1bf

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b2

    goto :goto_1bf

    :cond_1b2
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_1bb

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1bb
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1dc

    :cond_1bf
    :goto_1bf
    return-object p1

    :pswitch_1c0  #0x1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1c9

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_1c9
    const/4 p0, 0x0

    return-object p0

    :pswitch_1cb  #0x0
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    const-string/jumbo v1, "undefined"

    if-eq p0, v0, :cond_1db

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_1d7

    goto :goto_1db

    :cond_1d7
    invoke-static {v1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1dc

    :cond_1db
    :goto_1db
    return-object v1

    :goto_1dc
    return-object p1

    nop

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_1cb  #00000000
        :pswitch_1c0  #00000001
        :pswitch_1a5  #00000002
        :pswitch_150  #00000003
        :pswitch_103  #00000004
        :pswitch_e1  #00000005
        :pswitch_b0  #00000006
        :pswitch_b0  #00000007
        :pswitch_13  #00000008
    .end packed-switch
.end method

.method protected static createInterfaceAdapter(Ljava/lang/Class;Lorg/mozilla/javascript/ScriptableObject;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lorg/mozilla/javascript/NativeJavaObject;->COERCED_INTERFACE_KEY:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/mozilla/javascript/Kit;->makeHashKeyFromPair(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lorg/mozilla/javascript/InterfaceAdapter;->create(Lorg/mozilla/javascript/Context;Ljava/lang/Class;Lorg/mozilla/javascript/ScriptableObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 9

    invoke-static {p0}, Lorg/mozilla/javascript/NativeJavaObject;->getJSTypeCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x63

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_102

    goto/16 :goto_100

    :pswitch_f  #0x8
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_1a

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    return v5

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_25

    instance-of p0, p0, Lorg/mozilla/javascript/NativeArray;

    if-eqz p0, :cond_100

    return v4

    :cond_25
    if-ne p1, v0, :cond_28

    return v2

    :cond_28
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_2d

    return v3

    :cond_2d
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->DateClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_36

    instance-of p0, p0, Lorg/mozilla/javascript/NativeDate;

    if-eqz p0, :cond_100

    return v5

    :cond_36
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_49

    instance-of p1, p0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz p1, :cond_41

    return v5

    :cond_41
    instance-of p0, p0, Lorg/mozilla/javascript/NativeObject;

    if-eqz p0, :cond_46

    return v4

    :cond_46
    const/16 p0, 0xc

    return p0

    :cond_49
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_100

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p0, :cond_100

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getSizeRank(Ljava/lang/Class;)I

    move-result p0

    add-int/2addr p0, v3

    return p0

    :pswitch_59  #0x6, 0x7
    instance-of v2, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_63

    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p0

    :cond_63
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    const/4 p0, 0x0

    return p0

    :cond_6b
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_70

    return v4

    :cond_70
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_100

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p0, :cond_100

    const/4 p0, 0x7

    if-ne v0, p0, :cond_7e

    goto :goto_84

    :cond_7e
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getSizeRank(Ljava/lang/Class;)I

    move-result p0

    add-int/lit8 v1, p0, 0x2

    :goto_84
    return v1

    :pswitch_85  #0x5
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_8a

    return v5

    :cond_8a
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_8f

    return v2

    :cond_8f
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_100

    return v3

    :pswitch_94  #0x4
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_99

    return v5

    :cond_99
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a0

    return v4

    :cond_a0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_100

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_ab

    return v2

    :cond_ab
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p0, :cond_100

    return v3

    :pswitch_b0  #0x3
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_c5

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_bb

    return v5

    :cond_bb
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p0, :cond_100

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getSizeRank(Ljava/lang/Class;)I

    move-result p0

    add-int/2addr p0, v5

    return p0

    :cond_c5
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_cc

    const/16 p0, 0x9

    return p0

    :cond_cc
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_d3

    const/16 p0, 0xa

    return p0

    :cond_d3
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_100

    return v4

    :pswitch_dc  #0x2
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_e1

    return v5

    :cond_e1
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_e6

    return v4

    :cond_e6
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_eb

    return v2

    :cond_eb
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_100

    return v3

    :pswitch_f0  #0x1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-nez p0, :cond_100

    return v5

    :pswitch_f7  #0x0
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p1, p0, :cond_ff

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, p0, :cond_100

    :cond_ff
    return v5

    :cond_100
    :goto_100
    return v1

    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_f7  #00000000
        :pswitch_f0  #00000001
        :pswitch_dc  #00000002
        :pswitch_b0  #00000003
        :pswitch_94  #00000004
        :pswitch_85  #00000005
        :pswitch_59  #00000006
        :pswitch_59  #00000007
        :pswitch_f  #00000008
    .end packed-switch
.end method

.method private static getJSTypeCode(Ljava/lang/Object;)I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    const/4 p0, 0x4

    return p0

    :cond_10
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_16

    const/4 p0, 0x3

    return p0

    :cond_16
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    const/4 p0, 0x2

    return p0

    :cond_1c
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz v0, :cond_35

    instance-of v0, p0, Lorg/mozilla/javascript/NativeJavaClass;

    if-eqz v0, :cond_28

    return v3

    :cond_28
    instance-of v0, p0, Lorg/mozilla/javascript/NativeJavaArray;

    if-eqz v0, :cond_2d

    return v1

    :cond_2d
    instance-of p0, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz p0, :cond_32

    return v2

    :cond_32
    const/16 p0, 0x8

    return p0

    :cond_35
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_3a

    return v3

    :cond_3a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_45

    return v1

    :cond_45
    return v2
.end method

.method static getSizeRank(Ljava/lang/Class;)I
    .registers 2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_12

    const/4 p0, 0x3

    return p0

    :cond_12
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_18

    const/4 p0, 0x4

    return p0

    :cond_18
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1e

    const/4 p0, 0x5

    return p0

    :cond_1e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_24

    const/4 p0, 0x6

    return p0

    :cond_24
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    const/4 p0, 0x7

    return p0

    :cond_2a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    const/16 p0, 0x63

    return p0

    :cond_31
    const/16 p0, 0x8

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    sget-object v0, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_26

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    :try_start_19
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_20

    goto :goto_32

    :catch_20
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_26
    new-instance p1, Ljava/lang/ClassNotFoundException;

    invoke-direct {p1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw p1

    :cond_2c
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    :goto_32
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_41

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    goto :goto_43

    :cond_41
    iput-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    :goto_43
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaObject;->initMembers()V

    return-void
.end method

.method static reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg.conversion.not.allowed"

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method private static toDouble(Ljava/lang/Object;)D
    .registers 4

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_b
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_16
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_2e

    instance-of v0, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_29

    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0

    :cond_29
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0

    :cond_2e
    const/4 v0, 0x0

    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "doubleValue"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2f .. :try_end_39} :catch_3a
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-object v1, v0

    :goto_3b
    if-eqz v1, :cond_53

    :try_start_3d
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_47} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3d .. :try_end_47} :catch_48

    return-wide v0

    :catch_48
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_53

    :catch_4e
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_53
    :goto_53
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J
    .registers 11

    invoke-static {p0}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_10
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_17
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_22

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_26

    :cond_22
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_26
    cmpg-double v2, v0, p2

    if-ltz v2, :cond_2e

    cmpl-double p2, v0, p4

    if-lez p2, :cond_35

    :cond_2e
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_35
    double-to-long p0, v0

    return-wide p0
.end method

.method public static wrap(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1, p2}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    sget-object v0, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_26

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    :try_start_1c
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_31

    :catch_20
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_26
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2c
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_31
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_40

    :cond_3d
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_40
    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 2

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public delete(Lorg/mozilla/javascript/Symbol;)V
    .registers 2

    return-void
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 3

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->fieldAndMethods:Ljava/util/Map;

    if-eqz p2, :cond_b

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_b

    return-object p2

    :cond_b
    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2, p0, p1, v0, v1}, Lorg/mozilla/javascript/JavaMembers;->get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 3

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "JavaObject"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    if-nez p1, :cond_10

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    :cond_a
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_10

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    :cond_10
    if-eqz p1, :cond_67

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_17

    goto :goto_67

    :cond_17
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    const-string v0, "booleanValue"

    goto :goto_24

    :cond_1e
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_60

    const-string v0, "doubleValue"

    :goto_24
    invoke-virtual {p0, v0, p0}, Lorg/mozilla/javascript/NativeJavaObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_3d

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p0, v2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6d

    :cond_3d
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_59

    iget-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_59

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_56

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    goto :goto_6d

    :cond_56
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    goto :goto_6d

    :cond_59
    iget-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6d

    :cond_60
    const-string p1, "msg.default.value"

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_67
    :goto_67
    iget-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6d
    return-object p1
.end method

.method public getIds()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->getIds(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_16

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/TopLevel$Builtins;->String:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected initMembers()V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    :goto_b
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    iget-boolean v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    invoke-static {v1, v0, v2, v3}, Lorg/mozilla/javascript/JavaMembers;->lookupClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/mozilla/javascript/JavaMembers;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/mozilla/javascript/JavaMembers;->getFieldAndMethodsObjects(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->fieldAndMethods:Ljava/util/Map;

    return-void
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 4

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 10

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_14

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_14

    :cond_e
    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_14
    :goto_14
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/JavaMembers;->put(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_1f
    return-void
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 10

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_1f

    :cond_12
    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    instance-of v0, p2, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v0, :cond_29

    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_29

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/JavaMembers;->put(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    return-object v0
.end method
