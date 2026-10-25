.class public Lorg/mozilla/javascript/NativeWeakMap;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeWeakMap.java"


# static fields
.field private static final Id_constructor:I = 0x1

.field private static final Id_delete:I = 0x2

.field private static final Id_get:I = 0x3

.field private static final Id_has:I = 0x4

.field private static final Id_set:I = 0x5

.field private static final MAP_TAG:Ljava/lang/Object;

.field private static final MAX_PROTOTYPE_ID:I = 0x6

.field private static final NULL_VALUE:Ljava/lang/Object;

.field private static final SymbolId_toStringTag:I = 0x6

.field private static final serialVersionUID:J = 0x7853921e6674a155L


# instance fields
.field private instanceOfWeakMap:Z

.field private transient map:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WeakMap"

    sput-object v0, Lorg/mozilla/javascript/NativeWeakMap;->MAP_TAG:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/NativeWeakMap;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->instanceOfWeakMap:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeWeakMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeWeakMap;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private js_delete(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private js_get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_14
    sget-object v0, Lorg/mozilla/javascript/NativeWeakMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_19

    const/4 p1, 0x0

    :cond_19
    return-object p1
.end method

.method private js_has(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private js_set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez p2, :cond_a

    sget-object p2, Lorg/mozilla/javascript/NativeWeakMap;->NULL_VALUE:Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_12
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.arg.not.object"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeWeakMap;->map:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;
    .registers 3

    if-eqz p0, :cond_13

    :try_start_2
    check-cast p0, Lorg/mozilla/javascript/NativeWeakMap;

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeWeakMap;->instanceOfWeakMap:Z

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_e} :catch_e

    :catch_e
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_13
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lorg/mozilla/javascript/NativeWeakMap;->MAP_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_88

    const/4 p2, 0x2

    if-eq v0, p2, :cond_77

    const/4 p2, 0x3

    if-eq v0, p2, :cond_66

    const/4 p2, 0x4

    if-eq v0, p2, :cond_55

    const/4 p2, 0x5

    if-ne v0, p2, :cond_3a

    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeWeakMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_2b

    aget-object p2, p5, v2

    goto :goto_2d

    :cond_2b
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2d
    array-length p3, p5

    if-le p3, v1, :cond_33

    aget-object p3, p5, v1

    goto :goto_35

    :cond_33
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_35
    invoke-direct {p1, p2, p3}, Lorg/mozilla/javascript/NativeWeakMap;->js_set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "WeakMap.prototype has no method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_55
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeWeakMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_5f

    aget-object p2, p5, v2

    goto :goto_61

    :cond_5f
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_61
    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeWeakMap;->js_has(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_66
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeWeakMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_70

    aget-object p2, p5, v2

    goto :goto_72

    :cond_70
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_72
    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeWeakMap;->js_get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_77
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeWeakMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeWeakMap;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_81

    aget-object p2, p5, v2

    goto :goto_83

    :cond_81
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_83
    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeWeakMap;->js_delete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_88
    if-nez p4, :cond_9a

    new-instance p1, Lorg/mozilla/javascript/NativeWeakMap;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeWeakMap;-><init>()V

    iput-boolean v1, p1, Lorg/mozilla/javascript/NativeWeakMap;->instanceOfWeakMap:Z

    array-length p4, p5

    if-lez p4, :cond_99

    aget-object p4, p5, v2

    invoke-static {p2, p3, p1, p4}, Lorg/mozilla/javascript/NativeMap;->loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V

    :cond_99
    return-object p1

    :cond_9a
    const-string p1, "msg.no.new"

    const-string p2, "WeakMap"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_49

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x67

    const/16 v6, 0x65

    const/16 v7, 0x74

    if-ne v0, v5, :cond_23

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_58

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_58

    goto :goto_65

    :cond_23
    const/16 v1, 0x68

    const/16 v5, 0x73

    if-ne v0, v1, :cond_39

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_58

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_58

    const/4 v1, 0x4

    goto :goto_65

    :cond_39
    if-ne v0, v5, :cond_58

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_58

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_58

    const/4 v1, 0x5

    goto :goto_65

    :cond_49
    const/4 v1, 0x6

    if-ne v0, v1, :cond_50

    const-string v0, "delete"

    const/4 v1, 0x2

    goto :goto_5a

    :cond_50
    const/16 v1, 0xb

    if-ne v0, v1, :cond_58

    const-string v0, "constructor"

    const/4 v1, 0x1

    goto :goto_5a

    :cond_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5a
    if-eqz v0, :cond_65

    if-eq v0, p1, :cond_65

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    const/4 v1, 0x0

    :cond_65
    :goto_65
    return v1
.end method

.method protected findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x6

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "WeakMap"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 11

    const/4 v0, 0x3

    const/4 v1, 0x6

    if-ne p1, v1, :cond_e

    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeWeakMap;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void

    :cond_e
    const/4 v7, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_37

    if-eq p1, v1, :cond_32

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x5

    if-ne p1, v0, :cond_22

    const-string v0, "set"

    move-object v6, v0

    const/4 v8, 0x2

    goto :goto_3c

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const-string v0, "has"

    goto :goto_34

    :cond_2f
    const-string v0, "get"

    goto :goto_34

    :cond_32
    const-string v0, "delete"

    :goto_34
    move-object v6, v0

    const/4 v8, 0x1

    goto :goto_3c

    :cond_37
    const/4 v0, 0x0

    const-string v1, "constructor"

    move-object v6, v1

    const/4 v8, 0x0

    :goto_3c
    sget-object v4, Lorg/mozilla/javascript/NativeWeakMap;->MAP_TAG:Ljava/lang/Object;

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method
