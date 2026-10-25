.class final Lorg/mozilla/javascript/NativeString;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeString.java"


# static fields
.field private static final ConstructorId_charAt:I = -0x5

.field private static final ConstructorId_charCodeAt:I = -0x6

.field private static final ConstructorId_concat:I = -0xe

.field private static final ConstructorId_equalsIgnoreCase:I = -0x1e

.field private static final ConstructorId_fromCharCode:I = -0x1

.field private static final ConstructorId_fromCodePoint:I = -0x2

.field private static final ConstructorId_indexOf:I = -0x7

.field private static final ConstructorId_lastIndexOf:I = -0x8

.field private static final ConstructorId_localeCompare:I = -0x22

.field private static final ConstructorId_match:I = -0x1f

.field private static final ConstructorId_replace:I = -0x21

.field private static final ConstructorId_search:I = -0x20

.field private static final ConstructorId_slice:I = -0xf

.field private static final ConstructorId_split:I = -0x9

.field private static final ConstructorId_substr:I = -0xd

.field private static final ConstructorId_substring:I = -0xa

.field private static final ConstructorId_toLocaleLowerCase:I = -0x23

.field private static final ConstructorId_toLowerCase:I = -0xb

.field private static final ConstructorId_toUpperCase:I = -0xc

.field private static final Id_anchor:I = 0x1c

.field private static final Id_big:I = 0x15

.field private static final Id_blink:I = 0x16

.field private static final Id_bold:I = 0x10

.field private static final Id_charAt:I = 0x5

.field private static final Id_charCodeAt:I = 0x6

.field private static final Id_codePointAt:I = 0x2d

.field private static final Id_concat:I = 0xe

.field private static final Id_constructor:I = 0x1

.field private static final Id_endsWith:I = 0x2a

.field private static final Id_equals:I = 0x1d

.field private static final Id_equalsIgnoreCase:I = 0x1e

.field private static final Id_fixed:I = 0x12

.field private static final Id_fontcolor:I = 0x1a

.field private static final Id_fontsize:I = 0x19

.field private static final Id_includes:I = 0x28

.field private static final Id_indexOf:I = 0x7

.field private static final Id_italics:I = 0x11

.field private static final Id_lastIndexOf:I = 0x8

.field private static final Id_length:I = 0x1

.field private static final Id_link:I = 0x1b

.field private static final Id_localeCompare:I = 0x22

.field private static final Id_match:I = 0x1f

.field private static final Id_normalize:I = 0x2b

.field private static final Id_padEnd:I = 0x2f

.field private static final Id_padStart:I = 0x2e

.field private static final Id_repeat:I = 0x2c

.field private static final Id_replace:I = 0x21

.field private static final Id_search:I = 0x20

.field private static final Id_slice:I = 0xf

.field private static final Id_small:I = 0x14

.field private static final Id_split:I = 0x9

.field private static final Id_startsWith:I = 0x29

.field private static final Id_strike:I = 0x13

.field private static final Id_sub:I = 0x18

.field private static final Id_substr:I = 0xd

.field private static final Id_substring:I = 0xa

.field private static final Id_sup:I = 0x17

.field private static final Id_toLocaleLowerCase:I = 0x23

.field private static final Id_toLocaleUpperCase:I = 0x24

.field private static final Id_toLowerCase:I = 0xb

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final Id_toUpperCase:I = 0xc

.field private static final Id_trim:I = 0x25

.field private static final Id_trimEnd:I = 0x32

.field private static final Id_trimLeft:I = 0x26

.field private static final Id_trimRight:I = 0x27

.field private static final Id_trimStart:I = 0x31

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_INSTANCE_ID:I = 0x1

.field private static final MAX_PROTOTYPE_ID:I = 0x32

.field private static final STRING_TAG:Ljava/lang/Object;

.field private static final SymbolId_iterator:I = 0x30

.field private static final serialVersionUID:J = 0xcc57334977d230fL


# instance fields
.field private string:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "String"

    sput-object v0, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    return-void
.end method

.method private defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 6

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

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v0, "writable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "enumerable"

    invoke-virtual {v1, v3, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "configurable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static js_concat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    array-length v0, p1

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1a
    if-eq v4, v0, :cond_2c

    aget-object v5, p1, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_34
    if-eq v1, v0, :cond_3e

    aget-object p0, v3, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_indexOf(ILjava/lang/String;[Ljava/lang/Object;)I
    .registers 14

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v3

    const/16 v5, 0x29

    const/16 v6, 0x2a

    if-eq p0, v5, :cond_28

    if-eq p0, v6, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v0, p0

    cmpl-double p0, v3, v0

    if-lez p0, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_27

    :cond_26
    double-to-int p0, v3

    :goto_27
    return p0

    :cond_28
    const/4 v7, -0x1

    if-eq p0, v5, :cond_37

    if-eq p0, v6, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v10, v3, v8

    if-lez v10, :cond_37

    return v7

    :cond_37
    const-wide/16 v8, 0x0

    cmpg-double v10, v3, v8

    if-gez v10, :cond_3f

    move-wide v3, v8

    goto :goto_64

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v10, v3, v8

    if-lez v10, :cond_4e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_4c
    int-to-double v3, v3

    goto :goto_64

    :cond_4e
    if-ne p0, v6, :cond_64

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_5f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v10, v3, v8

    if-lez v10, :cond_64

    :cond_5f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_4c

    :cond_64
    :goto_64
    if-ne v6, p0, :cond_89

    array-length p0, p2

    if-eqz p0, :cond_76

    array-length p0, p2

    if-eq p0, v2, :cond_76

    array-length p0, p2

    const/4 v5, 0x2

    if-ne p0, v5, :cond_7b

    aget-object p0, p2, v2

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, p2, :cond_7b

    :cond_76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v3, p0

    :cond_7b
    double-to-int p0, v3

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_87

    goto :goto_88

    :cond_87
    const/4 v0, -0x1

    :goto_88
    return v0

    :cond_89
    if-ne p0, v5, :cond_95

    double-to-int p0, v3

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_93

    goto :goto_9a

    :cond_93
    const/4 v0, -0x1

    goto :goto_9a

    :cond_95
    double-to-int p0, v3

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_9a
    return v0
.end method

.method private static js_lastIndexOf(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    const-wide/16 v3, 0x0

    if-nez p1, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v5, p1

    cmpl-double p1, v1, v5

    if-lez p1, :cond_1c

    goto :goto_22

    :cond_1c
    cmpg-double p1, v1, v3

    if-gez p1, :cond_27

    move-wide v1, v3

    goto :goto_27

    :cond_22
    :goto_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v1, p1

    :cond_27
    :goto_27
    double-to-int p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static js_pad(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 9

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toLength([Ljava/lang/Object;I)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_17

    return-object p0

    :cond_17
    array-length p2, p3

    const/4 v2, 0x2

    if-lt p2, v2, :cond_31

    const/4 p2, 0x1

    aget-object v2, p3, p2

    invoke-static {v2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_33

    return-object p0

    :cond_31
    const-string p3, " "

    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v2, p2

    sub-long/2addr v0, v2

    long-to-int p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3f
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, p2, :cond_3f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p4, :cond_55

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_55
    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_repeat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_70

    const-wide/high16 v2, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpl-double v4, p2, v2

    if-eqz v4, :cond_70

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_6d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    goto :goto_6d

    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    double-to-long v2, p2

    mul-long v0, v0, v2

    const-wide v2, 0x41dfffffffc00000L  # 2.147483647E9

    cmpl-double v4, p2, v2

    if-gtz v4, :cond_66

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_66

    new-instance v2, Ljava/lang/StringBuilder;

    long-to-int v1, v0

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    double-to-int p2, p2

    :goto_47
    div-int/lit8 p3, p2, 0x2

    if-gt v0, p3, :cond_51

    invoke-virtual {v2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x2

    goto :goto_47

    :cond_51
    if-ge v0, p2, :cond_61

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p2, v0

    mul-int p0, p0, p2

    invoke-virtual {v2, p1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_66
    const-string p0, "Invalid size or count value"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_6d
    :goto_6d
    const-string p0, ""

    return-object p0

    :cond_70
    const-string p0, "Invalid count value"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    goto :goto_78

    :goto_77
    throw p0

    :goto_78
    goto :goto_77
.end method

.method private static js_slice(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 11

    array-length v0, p1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_8

    move-wide v4, v2

    goto :goto_f

    :cond_8
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v4

    :goto_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    cmpg-double v6, v4, v2

    if-gez v6, :cond_22

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    cmpg-double v6, v4, v2

    if-gez v6, :cond_28

    move-wide v4, v2

    goto :goto_28

    :cond_22
    int-to-double v6, v0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_28

    move-wide v4, v6

    :cond_28
    :goto_28
    array-length v6, p1

    const/4 v7, 0x2

    if-lt v6, v7, :cond_54

    aget-object v6, p1, v1

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v6, v7, :cond_33

    goto :goto_54

    :cond_33
    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    cmpg-double p1, v6, v2

    if-gez p1, :cond_47

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v0

    cmpg-double p1, v6, v2

    if-gez p1, :cond_4d

    goto :goto_4e

    :cond_47
    int-to-double v2, v0

    cmpl-double p1, v6, v2

    if-lez p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move-wide v2, v6

    :goto_4e
    cmpg-double p1, v2, v4

    if-gez p1, :cond_55

    move-wide v2, v4

    goto :goto_55

    :cond_54
    :goto_54
    int-to-double v2, v0

    :cond_55
    :goto_55
    double-to-int p1, v4

    double-to-int v0, v2

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static js_substr(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 11

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    return-object p0

    :cond_5
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_21

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    cmpg-double v6, v2, v4

    if-gez v6, :cond_27

    move-wide v2, v4

    goto :goto_27

    :cond_21
    int-to-double v6, v0

    cmpl-double v8, v2, v6

    if-lez v8, :cond_27

    move-wide v2, v6

    :cond_27
    :goto_27
    int-to-double v6, v0

    array-length v0, p1

    if-le v0, v1, :cond_44

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    cmpg-double p1, v0, v4

    if-gez p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move-wide v4, v0

    :goto_3d
    add-double/2addr v4, v2

    cmpl-double p1, v4, v6

    if-lez p1, :cond_43

    goto :goto_44

    :cond_43
    move-wide v6, v4

    :cond_44
    :goto_44
    double-to-int p1, v2

    double-to-int v0, v6

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static js_substring(Lorg/mozilla/javascript/Context;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 13

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_11

    move-wide v1, v3

    goto :goto_17

    :cond_11
    int-to-double v5, v0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_17

    move-wide v1, v5

    :cond_17
    :goto_17
    array-length v5, p2

    const/4 v6, 0x1

    if-le v5, v6, :cond_46

    aget-object v5, p2, v6

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v5, v7, :cond_22

    goto :goto_46

    :cond_22
    aget-object p2, p2, v6

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    cmpg-double p2, v5, v3

    if-gez p2, :cond_2d

    goto :goto_34

    :cond_2d
    int-to-double v3, v0

    cmpl-double p2, v5, v3

    if-lez p2, :cond_33

    goto :goto_34

    :cond_33
    move-wide v3, v5

    :goto_34
    cmpg-double p2, v3, v1

    if-gez p2, :cond_47

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 p2, 0x78

    if-eq p0, p2, :cond_44

    move-wide v8, v1

    move-wide v1, v3

    move-wide v3, v8

    goto :goto_47

    :cond_44
    move-wide v3, v1

    goto :goto_47

    :cond_46
    :goto_46
    int-to-double v3, v0

    :cond_47
    :goto_47
    double-to-int p0, v1

    double-to-int p2, v3

    invoke-interface {p1, p0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;
    .registers 3

    instance-of v0, p0, Lorg/mozilla/javascript/NativeString;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/mozilla/javascript/NativeString;

    return-object p0

    :cond_7
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2d

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-static {p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    const/16 p2, 0x3e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    :goto_1b
    const/4 v6, -0x2

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v3, v6, :cond_3fa

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3e1

    packed-switch v3, :pswitch_data_442

    packed-switch v3, :pswitch_data_452

    const/4 v10, 0x3

    const-string v11, "a"

    const-string v12, "font"

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    packed-switch v3, :pswitch_data_46c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String.prototype has no method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_51  #0x30
    new-instance v3, Lorg/mozilla/javascript/NativeStringIterator;

    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lorg/mozilla/javascript/NativeStringIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object v3

    :pswitch_5b  #0x2d
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v1

    cmpg-double v3, v1, v13

    if-ltz v3, :cond_7f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_75

    goto :goto_7f

    :cond_75
    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_81

    :cond_7f
    :goto_7f
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_81
    return-object v0

    :pswitch_82  #0x2c
    invoke-static {v1, v4, v0, v5}, Lorg/mozilla/javascript/NativeString;->js_repeat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_87  #0x2b
    array-length v2, v5

    if-eqz v2, :cond_e6

    aget-object v2, v5, v9

    invoke-static {v2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    goto :goto_e6

    :cond_93
    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-virtual {v3}, Ljava/text/Normalizer$Form;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    goto :goto_d2

    :cond_a6
    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-virtual {v3}, Ljava/text/Normalizer$Form;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    sget-object v2, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    goto :goto_d2

    :cond_b5
    sget-object v3, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-virtual {v3}, Ljava/text/Normalizer$Form;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    sget-object v2, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    goto :goto_d2

    :cond_c4
    sget-object v3, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-virtual {v3}, Ljava/text/Normalizer$Form;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    :goto_d2
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_df
    const-string v0, "The normalization form should be one of \'NFC\', \'NFD\', \'NFKC\', \'NFKD\'."

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_e6
    :goto_e6
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_f5  #0x28, 0x29, 0x2a
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    array-length v7, v5

    if-lez v7, :cond_118

    aget-object v7, v5, v9

    instance-of v7, v7, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-nez v7, :cond_107

    goto :goto_118

    :cond_107
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "msg.first.arg.not.regexp"

    invoke-static {v2, v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_118
    :goto_118
    invoke-static {v3, v2, v5}, Lorg/mozilla/javascript/NativeString;->js_indexOf(ILjava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    const/16 v7, 0x28

    if-ne v3, v7, :cond_129

    if-eq v2, v6, :cond_123

    goto :goto_124

    :cond_123
    const/4 v8, 0x0

    :goto_124
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_129
    const/16 v7, 0x29

    if-ne v3, v7, :cond_136

    if-nez v2, :cond_130

    goto :goto_131

    :cond_130
    const/4 v8, 0x0

    :goto_131
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_136
    const/16 v7, 0x2a

    if-ne v3, v7, :cond_143

    if-eq v2, v6, :cond_13d

    goto :goto_13e

    :cond_13d
    const/4 v8, 0x0

    :goto_13e
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_143
    :pswitch_143  #0x2e, 0x2f
    const/16 v2, 0x2e

    if-ne v3, v2, :cond_148

    goto :goto_149

    :cond_148
    const/4 v8, 0x0

    :goto_149
    invoke-static {v1, v4, v0, v5, v8}, Lorg/mozilla/javascript/NativeString;->js_pad(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_14e  #0x27, 0x32
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    :goto_15b
    if-lez v2, :cond_16a

    add-int/lit8 v3, v2, -0x1

    aget-char v3, v1, v3

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v3

    if-eqz v3, :cond_16a

    add-int/lit8 v2, v2, -0x1

    goto :goto_15b

    :cond_16a
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_16f  #0x26, 0x31
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_17b
    array-length v2, v1

    if-ge v9, v2, :cond_189

    aget-char v2, v1, v9

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v2

    if-eqz v2, :cond_189

    add-int/lit8 v9, v9, 0x1

    goto :goto_17b

    :cond_189
    array-length v1, v1

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18f  #0x25
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_19b
    array-length v2, v1

    if-ge v9, v2, :cond_1a9

    aget-char v2, v1, v9

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v2

    if-eqz v2, :cond_1a9

    add-int/lit8 v9, v9, 0x1

    goto :goto_19b

    :cond_1a9
    array-length v2, v1

    :goto_1aa
    if-le v2, v9, :cond_1b9

    add-int/lit8 v3, v2, -0x1

    aget-char v3, v1, v3

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v3

    if-eqz v3, :cond_1b9

    add-int/lit8 v2, v2, -0x1

    goto :goto_1aa

    :cond_1b9
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1be  #0x24
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1cf  #0x23
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1e0  #0x22
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/text/Collator;->setStrength(I)V

    invoke-virtual {v1, v8}, Ljava/text/Collator;->setDecomposition(I)V

    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_204  #0x1f, 0x20, 0x21
    const/16 v6, 0x1f

    if-ne v3, v6, :cond_20a

    const/4 v10, 0x1

    goto :goto_211

    :cond_20a
    const/16 v6, 0x20

    if-ne v3, v6, :cond_20f

    goto :goto_211

    :cond_20f
    const/4 v3, 0x2

    const/4 v10, 0x2

    :goto_211
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v4

    move-object v4, v5

    move v5, v10

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/RegExpProxy;->action(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_224  #0x1d, 0x1e
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    if-ne v3, v2, :cond_235

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_239

    :cond_235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_239
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_23e  #0x1c
    const-string v0, "name"

    invoke-static {v4, v11, v0, v5}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_245  #0x1b
    const-string v0, "href"

    invoke-static {v4, v11, v0, v5}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_24c  #0x1a
    const-string v0, "color"

    invoke-static {v4, v12, v0, v5}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_253  #0x19
    const-string/jumbo v0, "size"

    invoke-static {v4, v12, v0, v5}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_25b  #0x18
    const-string/jumbo v0, "sub"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_263  #0x17
    const-string/jumbo v0, "sup"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_26b  #0x16
    const-string v0, "blink"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_272  #0x15
    const-string v0, "big"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_279  #0x14
    const-string/jumbo v0, "small"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_281  #0x13
    const-string/jumbo v0, "strike"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_289  #0x12
    const-string/jumbo v0, "tt"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_291  #0x11
    const-string v0, "i"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_298  #0x10
    const-string v0, "b"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_29f  #0xf
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mozilla/javascript/NativeString;->js_slice(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_2ac  #0xe
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mozilla/javascript/NativeString;->js_concat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2b9  #0xd
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mozilla/javascript/NativeString;->js_substr(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_2c6  #0xc
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2d5  #0xb
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2e4  #0xa
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lorg/mozilla/javascript/NativeString;->js_substring(Lorg/mozilla/javascript/Context;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_2f1  #0x9
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0, v5}, Lorg/mozilla/javascript/RegExpProxy;->js_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_302  #0x8
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mozilla/javascript/NativeString;->js_lastIndexOf(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_313  #0x7
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1, v0, v5}, Lorg/mozilla/javascript/NativeString;->js_indexOf(ILjava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_325  #0x5, 0x6
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v1

    const/4 v4, 0x5

    cmpg-double v5, v1, v13

    if-ltz v5, :cond_351

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-double v5, v5

    cmpl-double v8, v1, v5

    if-ltz v8, :cond_340

    goto :goto_351

    :cond_340
    double-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v3, v4, :cond_34c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34c
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_351
    :goto_351
    if-ne v3, v4, :cond_354

    return-object v7

    :cond_354
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object v0

    :pswitch_357  #0x3
    invoke-static {v4, v0}, Lorg/mozilla/javascript/NativeString;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;

    move-result-object v0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(new String(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"))"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_37c  #0x2, 0x4
    invoke-static {v4, v0}, Lorg/mozilla/javascript/NativeString;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;

    move-result-object v0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_387

    goto :goto_38b

    :cond_387
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_38b
    return-object v0

    :pswitch_38c  #0x1
    array-length v0, v5

    if-nez v0, :cond_390

    goto :goto_3a7

    :cond_390
    aget-object v0, v5, v9

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a1

    if-eqz v4, :cond_3a1

    aget-object v0, v5, v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3a7

    :cond_3a1
    aget-object v0, v5, v9

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_3a7
    if-nez v4, :cond_3af

    new-instance v0, Lorg/mozilla/javascript/NativeString;

    invoke-direct {v0, v7}, Lorg/mozilla/javascript/NativeString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_3af
    instance-of v0, v7, Ljava/lang/String;

    if-eqz v0, :cond_3b4

    goto :goto_3b8

    :cond_3b4
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3b8
    return-object v7

    :pswitch_3b9  #0xffffffdd, 0xffffffde, 0xffffffdf, 0xffffffe0, 0xffffffe1, 0xffffffe2, 0xfffffff1, 0xfffffff2, 0xfffffff3, 0xfffffff4, 0xfffffff5, 0xfffffff6, 0xfffffff7, 0xfffffff8, 0xfffffff9, 0xfffffffa, 0xfffffffb
    array-length v6, v5

    if-lez v6, :cond_3d6

    aget-object v4, v5, v9

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    array-length v6, v5

    sub-int/2addr v6, v8

    new-array v7, v6, [Ljava/lang/Object;

    :goto_3ca
    if-ge v9, v6, :cond_3d4

    add-int/lit8 v8, v9, 0x1

    aget-object v10, v5, v8

    aput-object v10, v7, v9

    move v9, v8

    goto :goto_3ca

    :cond_3d4
    move-object v5, v7

    goto :goto_3de

    :cond_3d6
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    :goto_3de
    neg-int v3, v3

    goto/16 :goto_1b

    :cond_3e1
    array-length v0, v5

    if-ge v0, v8, :cond_3e5

    return-object v7

    :cond_3e5
    new-array v1, v0, [C

    :goto_3e7
    if-eq v9, v0, :cond_3f4

    aget-object v2, v5, v9

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toUint16(Ljava/lang/Object;)C

    move-result v2

    aput-char v2, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e7

    :cond_3f4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_3fa
    array-length v0, v5

    if-ge v0, v8, :cond_3fe

    return-object v7

    :cond_3fe
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_401
    if-eq v2, v0, :cond_43c

    aget-object v3, v5, v2

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_422

    invoke-static {v4}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v6

    if-eqz v6, :cond_422

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_401

    :cond_422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid code point "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_43c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v0}, Ljava/lang/String;-><init>([III)V

    return-object v2

    :pswitch_data_442
    .packed-switch -0x23
        :pswitch_3b9  #ffffffdd
        :pswitch_3b9  #ffffffde
        :pswitch_3b9  #ffffffdf
        :pswitch_3b9  #ffffffe0
        :pswitch_3b9  #ffffffe1
        :pswitch_3b9  #ffffffe2
    .end packed-switch

    :pswitch_data_452
    .packed-switch -0xf
        :pswitch_3b9  #fffffff1
        :pswitch_3b9  #fffffff2
        :pswitch_3b9  #fffffff3
        :pswitch_3b9  #fffffff4
        :pswitch_3b9  #fffffff5
        :pswitch_3b9  #fffffff6
        :pswitch_3b9  #fffffff7
        :pswitch_3b9  #fffffff8
        :pswitch_3b9  #fffffff9
        :pswitch_3b9  #fffffffa
        :pswitch_3b9  #fffffffb
    .end packed-switch

    :pswitch_data_46c
    .packed-switch 0x1
        :pswitch_38c  #00000001
        :pswitch_37c  #00000002
        :pswitch_357  #00000003
        :pswitch_37c  #00000004
        :pswitch_325  #00000005
        :pswitch_325  #00000006
        :pswitch_313  #00000007
        :pswitch_302  #00000008
        :pswitch_2f1  #00000009
        :pswitch_2e4  #0000000a
        :pswitch_2d5  #0000000b
        :pswitch_2c6  #0000000c
        :pswitch_2b9  #0000000d
        :pswitch_2ac  #0000000e
        :pswitch_29f  #0000000f
        :pswitch_298  #00000010
        :pswitch_291  #00000011
        :pswitch_289  #00000012
        :pswitch_281  #00000013
        :pswitch_279  #00000014
        :pswitch_272  #00000015
        :pswitch_26b  #00000016
        :pswitch_263  #00000017
        :pswitch_25b  #00000018
        :pswitch_253  #00000019
        :pswitch_24c  #0000001a
        :pswitch_245  #0000001b
        :pswitch_23e  #0000001c
        :pswitch_224  #0000001d
        :pswitch_224  #0000001e
        :pswitch_204  #0000001f
        :pswitch_204  #00000020
        :pswitch_204  #00000021
        :pswitch_1e0  #00000022
        :pswitch_1cf  #00000023
        :pswitch_1be  #00000024
        :pswitch_18f  #00000025
        :pswitch_16f  #00000026
        :pswitch_14e  #00000027
        :pswitch_f5  #00000028
        :pswitch_f5  #00000029
        :pswitch_f5  #0000002a
        :pswitch_87  #0000002b
        :pswitch_82  #0000002c
        :pswitch_5b  #0000002d
        :pswitch_143  #0000002e
        :pswitch_143  #0000002f
        :pswitch_51  #00000030
        :pswitch_16f  #00000031
        :pswitch_14e  #00000032
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .registers 9

    sget-object v6, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "fromCharCode"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x2

    const-string v4, "fromCodePoint"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x5

    const-string v4, "charAt"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x6

    const-string v4, "charCodeAt"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x7

    const-string v4, "indexOf"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x8

    const-string v4, "lastIndexOf"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x9

    const-string/jumbo v4, "split"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xa

    const-string/jumbo v4, "substring"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xb

    const-string/jumbo v4, "toLowerCase"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xc

    const-string/jumbo v4, "toUpperCase"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xd

    const-string/jumbo v4, "substr"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xe

    const-string v4, "concat"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xf

    const-string/jumbo v4, "slice"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1e

    const-string v4, "equalsIgnoreCase"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x1f

    const-string v4, "match"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x20

    const-string v4, "search"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x21

    const-string v4, "replace"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x22

    const-string v4, "localeCompare"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x23

    const-string/jumbo v4, "toLocaleLowerCase"

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

    if-eqz v0, :cond_f

    const/4 p1, 0x7

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    :cond_f
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 18

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    const/16 v3, 0x55

    const/16 v4, 0x4c

    const/4 v5, 0x6

    const/16 v8, 0x64

    const/16 v9, 0x63

    const/16 v10, 0x72

    const/16 v12, 0x61

    const/4 v13, 0x4

    const/4 v15, 0x2

    const/16 v14, 0x6e

    const/16 v11, 0x73

    const/16 v7, 0x74

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_246

    :pswitch_21  #0xc, 0xe, 0xf
    goto/16 :goto_237

    :pswitch_23  #0x11
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_30

    const/16 v2, 0x23

    const-string/jumbo v1, "toLocaleLowerCase"

    goto/16 :goto_239

    :cond_30
    if-ne v1, v3, :cond_237

    const/16 v2, 0x24

    const-string/jumbo v1, "toLocaleUpperCase"

    goto/16 :goto_239

    :pswitch_39  #0x10
    const/16 v2, 0x1e

    const-string v1, "equalsIgnoreCase"

    goto/16 :goto_239

    :pswitch_3f  #0xd
    const/16 v2, 0x22

    const-string v1, "localeCompare"

    goto/16 :goto_239

    :pswitch_45  #0xb
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_6b

    if-eq v1, v3, :cond_64

    if-eq v1, v8, :cond_5e

    if-eq v1, v14, :cond_59

    if-eq v1, v11, :cond_55

    goto/16 :goto_237

    :cond_55
    const-string v1, "lastIndexOf"

    goto/16 :goto_239

    :cond_59
    const-string v1, "constructor"

    const/4 v2, 0x1

    goto/16 :goto_239

    :cond_5e
    const/16 v2, 0x2d

    const-string v1, "codePointAt"

    goto/16 :goto_239

    :cond_64
    const/16 v2, 0xc

    const-string/jumbo v1, "toUpperCase"

    goto/16 :goto_239

    :cond_6b
    const/16 v2, 0xb

    const-string/jumbo v1, "toLowerCase"

    goto/16 :goto_239

    :pswitch_72  #0xa
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_7d

    const-string v1, "charCodeAt"

    const/4 v2, 0x6

    goto/16 :goto_239

    :cond_7d
    if-ne v1, v11, :cond_237

    const/16 v2, 0x29

    const-string/jumbo v1, "startsWith"

    goto/16 :goto_239

    :pswitch_86  #0x9
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_b4

    const/16 v2, 0x53

    if-eq v1, v2, :cond_ad

    if-eq v1, v12, :cond_a7

    if-eq v1, v9, :cond_a1

    if-eq v1, v7, :cond_9a

    goto/16 :goto_237

    :cond_9a
    const/16 v2, 0xa

    const-string/jumbo v1, "substring"

    goto/16 :goto_239

    :cond_a1
    const/16 v2, 0x1a

    const-string v1, "fontcolor"

    goto/16 :goto_239

    :cond_a7
    const/16 v2, 0x2b

    const-string v1, "normalize"

    goto/16 :goto_239

    :cond_ad
    const/16 v2, 0x31

    const-string/jumbo v1, "trimStart"

    goto/16 :goto_239

    :cond_b4
    const/16 v2, 0x27

    const-string/jumbo v1, "trimRight"

    goto/16 :goto_239

    :pswitch_bb  #0x8
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v9, :cond_fa

    if-eq v1, v14, :cond_f4

    if-eq v1, v10, :cond_ee

    if-eq v1, v7, :cond_e8

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_e2

    const/16 v2, 0x65

    if-eq v1, v2, :cond_dc

    const/16 v2, 0x66

    if-eq v1, v2, :cond_d5

    goto/16 :goto_237

    :cond_d5
    const/16 v2, 0x26

    const-string/jumbo v1, "trimLeft"

    goto/16 :goto_239

    :cond_dc
    const/16 v2, 0x28

    const-string v1, "includes"

    goto/16 :goto_239

    :cond_e2
    const/16 v2, 0x19

    const-string v1, "fontsize"

    goto/16 :goto_239

    :cond_e8
    const/16 v2, 0x2a

    const-string v1, "endsWith"

    goto/16 :goto_239

    :cond_ee
    const/16 v2, 0x2e

    const-string v1, "padStart"

    goto/16 :goto_239

    :cond_f4
    const-string/jumbo v1, "toString"

    const/4 v2, 0x2

    goto/16 :goto_239

    :cond_fa
    const/4 v2, 0x3

    const-string/jumbo v1, "toSource"

    goto/16 :goto_239

    :pswitch_100  #0x7
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_12b

    const/16 v2, 0x65

    if-eq v1, v2, :cond_125

    if-eq v1, v14, :cond_120

    if-eq v1, v10, :cond_119

    if-eq v1, v7, :cond_113

    goto/16 :goto_237

    :cond_113
    const/16 v2, 0x11

    const-string v1, "italics"

    goto/16 :goto_239

    :cond_119
    const/16 v2, 0x32

    const-string/jumbo v1, "trimEnd"

    goto/16 :goto_239

    :cond_120
    const/4 v2, 0x7

    const-string v1, "indexOf"

    goto/16 :goto_239

    :cond_125
    const/16 v2, 0x21

    const-string v1, "replace"

    goto/16 :goto_239

    :cond_12b
    const-string/jumbo v1, "valueOf"

    const/4 v2, 0x4

    goto/16 :goto_239

    :pswitch_131  #0x6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_18b

    const/16 v2, 0x65

    if-eq v1, v2, :cond_177

    const/16 v2, 0x68

    if-eq v1, v2, :cond_172

    const/16 v2, 0x71

    if-eq v1, v2, :cond_16c

    if-eq v1, v14, :cond_166

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_160

    if-eq v1, v7, :cond_159

    const/16 v2, 0x75

    if-eq v1, v2, :cond_152

    goto/16 :goto_237

    :cond_152
    const/16 v2, 0xd

    const-string/jumbo v1, "substr"

    goto/16 :goto_239

    :cond_159
    const/16 v2, 0x13

    const-string/jumbo v1, "strike"

    goto/16 :goto_239

    :cond_160
    const/16 v2, 0xe

    const-string v1, "concat"

    goto/16 :goto_239

    :cond_166
    const/16 v2, 0x1c

    const-string v1, "anchor"

    goto/16 :goto_239

    :cond_16c
    const/16 v2, 0x1d

    const-string v1, "equals"

    goto/16 :goto_239

    :cond_172
    const/4 v2, 0x5

    const-string v1, "charAt"

    goto/16 :goto_239

    :cond_177
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_183

    const/16 v2, 0x2c

    const-string v1, "repeat"

    goto/16 :goto_239

    :cond_183
    if-ne v1, v11, :cond_237

    const/16 v2, 0x20

    const-string v1, "search"

    goto/16 :goto_239

    :cond_18b
    const/16 v2, 0x2f

    const-string v1, "padEnd"

    goto/16 :goto_239

    :pswitch_191  #0x5
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_1cc

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1c5

    const/16 v2, 0x68

    if-eq v1, v2, :cond_1bf

    if-eq v1, v7, :cond_1b8

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_1b2

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_1ab

    goto/16 :goto_237

    :cond_1ab
    const/16 v2, 0x14

    const-string/jumbo v1, "small"

    goto/16 :goto_239

    :cond_1b2
    const/16 v2, 0x16

    const-string v1, "blink"

    goto/16 :goto_239

    :cond_1b8
    const/16 v2, 0x9

    const-string/jumbo v1, "split"

    goto/16 :goto_239

    :cond_1bf
    const/16 v2, 0x1f

    const-string v1, "match"

    goto/16 :goto_239

    :cond_1c5
    const/16 v2, 0xf

    const-string/jumbo v1, "slice"

    goto/16 :goto_239

    :cond_1cc
    const/16 v2, 0x12

    const-string v1, "fixed"

    goto/16 :goto_239

    :pswitch_1d2  #0x4
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_1df

    const/16 v2, 0x10

    const-string v1, "bold"

    goto :goto_239

    :cond_1df
    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1e8

    const/16 v2, 0x1b

    const-string v1, "link"

    goto :goto_239

    :cond_1e8
    if-ne v1, v7, :cond_237

    const/16 v2, 0x25

    const-string/jumbo v1, "trim"

    goto :goto_239

    :pswitch_1f0  #0x3
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_20a

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_237

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_237

    const/16 v6, 0x18

    goto :goto_245

    :cond_20a
    const/4 v2, 0x1

    const/16 v3, 0x67

    if-ne v1, v3, :cond_222

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x62

    if-ne v1, v3, :cond_237

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_237

    const/16 v6, 0x15

    goto :goto_245

    :cond_222
    const/16 v3, 0x70

    if-ne v1, v3, :cond_237

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_237

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_237

    const/16 v6, 0x17

    goto :goto_245

    :cond_237
    :goto_237
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_239
    if-eqz v1, :cond_244

    if-eq v1, v0, :cond_244

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_244

    goto :goto_245

    :cond_244
    move v6, v2

    :goto_245
    return v6

    :pswitch_data_246
    .packed-switch 0x3
        :pswitch_1f0  #00000003
        :pswitch_1d2  #00000004
        :pswitch_191  #00000005
        :pswitch_131  #00000006
        :pswitch_100  #00000007
        :pswitch_bb  #00000008
        :pswitch_86  #00000009
        :pswitch_72  #0000000a
        :pswitch_45  #0000000b
        :pswitch_21  #0000000c
        :pswitch_3f  #0000000d
        :pswitch_21  #0000000e
        :pswitch_21  #0000000f
        :pswitch_39  #00000010
        :pswitch_23  #00000011
    .end packed-switch
.end method

.method protected findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x30

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    if-ltz p1, :cond_15

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object p2, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes(I)I
    .registers 4

    if-ltz p1, :cond_19

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_19

    const/4 p1, 0x5

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_18

    const/4 p1, 0x7

    :cond_18
    return p1

    :cond_19
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "String"

    return-object v0
.end method

.method protected getIds(ZZ)[Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_34

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p2, v0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1e
    iget-object v2, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2f
    array-length v2, p1

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_34
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_e
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getLength()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected getMaxInstanceId()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 6

    instance-of v0, p2, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_33

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_33

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez v1, :cond_33

    iget v1, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    if-ltz v1, :cond_33

    iget-object v2, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    iget-object p1, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    iget p2, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeString;->defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    :cond_33
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    if-ltz p1, :cond_c

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method protected initPrototypeId(I)V
    .registers 15

    const/16 v0, 0x30

    if-ne p1, v0, :cond_11

    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_ee

    :pswitch_18  #0x30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x32
    const-string/jumbo v0, "trimEnd"

    goto/16 :goto_de

    :pswitch_27  #0x31
    const-string/jumbo v0, "trimStart"

    goto/16 :goto_de

    :pswitch_2c  #0x2f
    const-string v0, "padEnd"

    goto/16 :goto_e3

    :pswitch_30  #0x2e
    const-string v0, "padStart"

    goto/16 :goto_e3

    :pswitch_34  #0x2d
    const-string v0, "codePointAt"

    goto/16 :goto_e3

    :pswitch_38  #0x2c
    const-string v0, "repeat"

    goto/16 :goto_e3

    :pswitch_3c  #0x2b
    const-string v0, "normalize"

    goto/16 :goto_de

    :pswitch_40  #0x2a
    const-string v0, "endsWith"

    goto/16 :goto_e3

    :pswitch_44  #0x29
    const-string/jumbo v0, "startsWith"

    goto/16 :goto_e3

    :pswitch_49  #0x28
    const-string v0, "includes"

    goto/16 :goto_e3

    :pswitch_4d  #0x27
    const-string/jumbo v0, "trimRight"

    goto/16 :goto_de

    :pswitch_52  #0x26
    const-string/jumbo v0, "trimLeft"

    goto/16 :goto_de

    :pswitch_57  #0x25
    const-string/jumbo v0, "trim"

    goto/16 :goto_de

    :pswitch_5c  #0x24
    const-string/jumbo v0, "toLocaleUpperCase"

    goto/16 :goto_de

    :pswitch_61  #0x23
    const-string/jumbo v0, "toLocaleLowerCase"

    goto/16 :goto_de

    :pswitch_66  #0x22
    const-string v0, "localeCompare"

    goto/16 :goto_e3

    :pswitch_6a  #0x21
    const-string v1, "replace"

    goto :goto_c4

    :pswitch_6d  #0x20
    const-string v0, "search"

    goto/16 :goto_e3

    :pswitch_71  #0x1f
    const-string v0, "match"

    goto/16 :goto_e3

    :pswitch_75  #0x1e
    const-string v0, "equalsIgnoreCase"

    goto/16 :goto_e3

    :pswitch_79  #0x1d
    const-string v0, "equals"

    goto/16 :goto_e3

    :pswitch_7d  #0x1c
    const-string v0, "anchor"

    goto/16 :goto_de

    :pswitch_81  #0x1b
    const-string v0, "link"

    goto/16 :goto_de

    :pswitch_85  #0x1a
    const-string v0, "fontcolor"

    goto :goto_de

    :pswitch_88  #0x19
    const-string v0, "fontsize"

    goto :goto_de

    :pswitch_8b  #0x18
    const-string/jumbo v0, "sub"

    goto :goto_de

    :pswitch_8f  #0x17
    const-string/jumbo v0, "sup"

    goto :goto_de

    :pswitch_93  #0x16
    const-string v0, "blink"

    goto :goto_de

    :pswitch_96  #0x15
    const-string v0, "big"

    goto :goto_de

    :pswitch_99  #0x14
    const-string/jumbo v0, "small"

    goto :goto_de

    :pswitch_9d  #0x13
    const-string/jumbo v0, "strike"

    goto :goto_de

    :pswitch_a1  #0x12
    const-string v0, "fixed"

    goto :goto_de

    :pswitch_a4  #0x11
    const-string v0, "italics"

    goto :goto_de

    :pswitch_a7  #0x10
    const-string v0, "bold"

    goto :goto_de

    :pswitch_aa  #0xf
    const-string/jumbo v1, "slice"

    goto :goto_c4

    :pswitch_ae  #0xe
    const-string v0, "concat"

    goto :goto_e3

    :pswitch_b1  #0xd
    const-string/jumbo v1, "substr"

    goto :goto_c4

    :pswitch_b5  #0xc
    const-string/jumbo v0, "toUpperCase"

    goto :goto_de

    :pswitch_b9  #0xb
    const-string/jumbo v0, "toLowerCase"

    goto :goto_de

    :pswitch_bd  #0xa
    const-string/jumbo v1, "substring"

    goto :goto_c4

    :pswitch_c1  #0x9
    const-string/jumbo v1, "split"

    :goto_c4
    move-object v10, v1

    const/4 v12, 0x2

    goto :goto_e5

    :pswitch_c7  #0x8
    const-string v0, "lastIndexOf"

    goto :goto_e3

    :pswitch_ca  #0x7
    const-string v0, "indexOf"

    goto :goto_e3

    :pswitch_cd  #0x6
    const-string v0, "charCodeAt"

    goto :goto_e3

    :pswitch_d0  #0x5
    const-string v0, "charAt"

    goto :goto_e3

    :pswitch_d3  #0x4
    const-string/jumbo v0, "valueOf"

    goto :goto_de

    :pswitch_d7  #0x3
    const-string/jumbo v0, "toSource"

    goto :goto_de

    :pswitch_db  #0x2
    const-string/jumbo v0, "toString"

    :goto_de
    move-object v10, v0

    const/4 v12, 0x0

    goto :goto_e5

    :pswitch_e1  #0x1
    const-string v0, "constructor"

    :goto_e3
    move-object v10, v0

    const/4 v12, 0x1

    :goto_e5
    sget-object v8, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    move-object v7, p0

    move v9, p1

    invoke-virtual/range {v7 .. v12}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_e1  #00000001
        :pswitch_db  #00000002
        :pswitch_d7  #00000003
        :pswitch_d3  #00000004
        :pswitch_d0  #00000005
        :pswitch_cd  #00000006
        :pswitch_ca  #00000007
        :pswitch_c7  #00000008
        :pswitch_c1  #00000009
        :pswitch_bd  #0000000a
        :pswitch_b9  #0000000b
        :pswitch_b5  #0000000c
        :pswitch_b1  #0000000d
        :pswitch_ae  #0000000e
        :pswitch_aa  #0000000f
        :pswitch_a7  #00000010
        :pswitch_a4  #00000011
        :pswitch_a1  #00000012
        :pswitch_9d  #00000013
        :pswitch_99  #00000014
        :pswitch_96  #00000015
        :pswitch_93  #00000016
        :pswitch_8f  #00000017
        :pswitch_8b  #00000018
        :pswitch_88  #00000019
        :pswitch_85  #0000001a
        :pswitch_81  #0000001b
        :pswitch_7d  #0000001c
        :pswitch_79  #0000001d
        :pswitch_75  #0000001e
        :pswitch_71  #0000001f
        :pswitch_6d  #00000020
        :pswitch_6a  #00000021
        :pswitch_66  #00000022
        :pswitch_61  #00000023
        :pswitch_5c  #00000024
        :pswitch_57  #00000025
        :pswitch_52  #00000026
        :pswitch_4d  #00000027
        :pswitch_49  #00000028
        :pswitch_44  #00000029
        :pswitch_40  #0000002a
        :pswitch_3c  #0000002b
        :pswitch_38  #0000002c
        :pswitch_34  #0000002d
        :pswitch_30  #0000002e
        :pswitch_2c  #0000002f
        :pswitch_18  #00000030
        :pswitch_27  #00000031
        :pswitch_22  #00000032
    .end packed-switch
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    if-ltz p1, :cond_b

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    return-void

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public toCharSequence()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    goto :goto_d

    :cond_9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method
