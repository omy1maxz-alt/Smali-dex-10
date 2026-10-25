.class public Lorg/mozilla/javascript/NativeMap;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeMap.java"


# static fields
.field static final ITERATOR_TAG:Ljava/lang/String; = "Map Iterator"

.field private static final Id_clear:I = 0x6

.field private static final Id_constructor:I = 0x1

.field private static final Id_delete:I = 0x4

.field private static final Id_entries:I = 0x9

.field private static final Id_forEach:I = 0xa

.field private static final Id_get:I = 0x3

.field private static final Id_has:I = 0x5

.field private static final Id_keys:I = 0x7

.field private static final Id_set:I = 0x2

.field private static final Id_values:I = 0x8

.field private static final MAP_TAG:Ljava/lang/Object;

.field private static final MAX_PROTOTYPE_ID:I = 0xc

.field private static final NULL_VALUE:Ljava/lang/Object;

.field private static final SymbolId_getSize:I = 0xb

.field private static final SymbolId_toStringTag:I = 0xc

.field private static final serialVersionUID:J = 0x10438168986853fbL


# instance fields
.field private final entries:Lorg/mozilla/javascript/Hashtable;

.field private instanceOfMap:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Map"

    sput-object v0, Lorg/mozilla/javascript/NativeMap;->MAP_TAG:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/NativeMap;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/Hashtable;

    invoke-direct {v0}, Lorg/mozilla/javascript/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeMap;->instanceOfMap:Z

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/NativeMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeMap;-><init>()V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "enumerable"

    invoke-virtual {p1, v2, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "configurable"

    invoke-virtual {p1, v2, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    sget-object v1, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get"

    invoke-virtual {p1, v2, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string/jumbo v1, "size"

    invoke-virtual {v0, p0, v1, p1}, Lorg/mozilla/javascript/IdScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    if-eqz p2, :cond_35

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_35
    return-void
.end method

.method private js_clear()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable;->clear()V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private js_delete(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Hashtable;->delete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private js_forEach(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    instance-of v0, p3, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_45

    check-cast p3, Lorg/mozilla/javascript/Callable;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Hashtable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {p1, p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    if-nez v2, :cond_1f

    if-nez v0, :cond_1f

    move-object v2, p2

    :cond_1f
    if-nez v2, :cond_23

    sget-object v2, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/Hashtable$Entry;

    iget-object v4, v3, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    sget-object v5, Lorg/mozilla/javascript/NativeMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne v4, v5, :cond_30

    const/4 v4, 0x0

    :cond_30
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    iget-object v3, v3, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    aput-object v3, v5, v4

    const/4 v3, 0x2

    aput-object p0, v5, v3

    invoke-interface {p3, p1, p2, v2, v5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_42
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_45
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.isnt.function"

    invoke-static {p2, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    goto :goto_51

    :goto_50
    throw p1

    :goto_51
    goto :goto_50
.end method

.method private js_get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_b
    sget-object v0, Lorg/mozilla/javascript/NativeMap;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_10

    const/4 p1, 0x0

    :cond_10
    return-object p1
.end method

.method private js_getSize()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private js_has(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Hashtable;->has(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Hashtable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "Map Iterator"

    invoke-direct {v0, p1, v2, p2, v1}, Lorg/mozilla/javascript/NativeCollectionIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/NativeCollectionIterator$Type;Ljava/util/Iterator;)V

    return-object v0
.end method

.method private js_set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    if-nez p2, :cond_4

    sget-object p2, Lorg/mozilla/javascript/NativeMap;->NULL_VALUE:Ljava/lang/Object;

    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_17

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    :cond_17
    iget-object v0, p0, Lorg/mozilla/javascript/NativeMap;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method static loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V
    .registers 11

    if-eqz p3, :cond_85

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_85

    :cond_c
    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "set"

    invoke-static {v0, v1, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    new-instance v1, Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {v1, p0, p1, p3}, Lorg/mozilla/javascript/IteratorLikeIterable;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :try_start_35
    invoke-virtual {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object p3

    :goto_39
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    instance-of v3, v2, Lorg/mozilla/javascript/Symbol;

    if-nez v3, :cond_6a

    const/4 v3, 0x0

    invoke-interface {v2, v3, v2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v4, v5, :cond_56

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_56
    const/4 v6, 0x1

    invoke-interface {v2, v6, v2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_5f

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_5f
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object v2, v5, v6

    invoke-interface {v0, p0, p1, p2, v5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_6a
    const-string p0, "msg.arg.not.object"

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
    :try_end_75
    .catchall {:try_start_35 .. :try_end_75} :catchall_79

    :cond_75
    invoke-virtual {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    return-void

    :catchall_79
    move-exception p0

    :try_start_7a
    throw p0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception p1

    :try_start_7c
    invoke-virtual {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_84
    throw p1

    :cond_85
    :goto_85
    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;
    .registers 3

    if-eqz p0, :cond_13

    :try_start_2
    check-cast p0, Lorg/mozilla/javascript/NativeMap;

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeMap;->instanceOfMap:Z

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

    sget-object v0, Lorg/mozilla/javascript/NativeMap;->MAP_TAG:Ljava/lang/Object;

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

    packed-switch v0, :pswitch_data_e4

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Map.prototype has no method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_31  #0xb
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeMap;->js_getSize()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3a  #0xa
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    array-length p4, p5

    if-lez p4, :cond_44

    aget-object p4, p5, v2

    goto :goto_46

    :cond_44
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_46
    array-length v0, p5

    if-le v0, v1, :cond_4c

    aget-object p5, p5, v1

    goto :goto_4e

    :cond_4c
    sget-object p5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_4e
    invoke-direct {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeMap;->js_forEach(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_53  #0x9
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeMap;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5e  #0x8
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->VALUES:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeMap;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_69  #0x7
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->KEYS:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeMap;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_74  #0x6
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeMap;->js_clear()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7d  #0x5
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_87

    aget-object p2, p5, v2

    goto :goto_89

    :cond_87
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_89
    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeMap;->js_has(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8e  #0x4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_98

    aget-object p2, p5, v2

    goto :goto_9a

    :cond_98
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_9a
    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeMap;->js_delete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9f  #0x3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_a9

    aget-object p2, p5, v2

    goto :goto_ab

    :cond_a9
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_ab
    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeMap;->js_get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b0  #0x2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeMap;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeMap;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_ba

    aget-object p2, p5, v2

    goto :goto_bc

    :cond_ba
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_bc
    array-length p3, p5

    if-le p3, v1, :cond_c2

    aget-object p3, p5, v1

    goto :goto_c4

    :cond_c2
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_c4
    invoke-direct {p1, p2, p3}, Lorg/mozilla/javascript/NativeMap;->js_set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_c9  #0x1
    if-nez p4, :cond_db

    new-instance p1, Lorg/mozilla/javascript/NativeMap;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeMap;-><init>()V

    iput-boolean v1, p1, Lorg/mozilla/javascript/NativeMap;->instanceOfMap:Z

    array-length p4, p5

    if-lez p4, :cond_da

    aget-object p4, p5, v2

    invoke-static {p2, p3, p1, p4}, Lorg/mozilla/javascript/NativeMap;->loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V

    :cond_da
    return-object p1

    :cond_db
    const-string p1, "msg.no.new"

    const-string p2, "Map"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_c9  #00000001
        :pswitch_b0  #00000002
        :pswitch_9f  #00000003
        :pswitch_8e  #00000004
        :pswitch_7d  #00000005
        :pswitch_74  #00000006
        :pswitch_69  #00000007
        :pswitch_5e  #00000008
        :pswitch_53  #00000009
        :pswitch_3a  #0000000a
        :pswitch_31  #0000000b
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x65

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v0, v5, :cond_55

    if-eq v0, v4, :cond_52

    if-eq v0, v3, :cond_4e

    if-eq v0, v2, :cond_38

    if-eq v0, v1, :cond_23

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1e

    goto/16 :goto_92

    :cond_1e
    const-string v0, "constructor"

    const/4 v1, 0x1

    goto/16 :goto_94

    :cond_23
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_2f

    const/16 v1, 0x9

    const-string v0, "entries"

    goto/16 :goto_94

    :cond_2f
    const/16 v1, 0x66

    if-ne v0, v1, :cond_92

    const/16 v1, 0xa

    const-string v0, "forEach"

    goto :goto_94

    :cond_38
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_44

    const-string v0, "delete"

    const/4 v1, 0x4

    goto :goto_94

    :cond_44
    const/16 v1, 0x76

    if-ne v0, v1, :cond_92

    const/16 v1, 0x8

    const-string/jumbo v0, "values"

    goto :goto_94

    :cond_4e
    const-string v0, "clear"

    const/4 v1, 0x6

    goto :goto_94

    :cond_52
    const-string v0, "keys"

    goto :goto_94

    :cond_55
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x67

    const/16 v2, 0x74

    if-ne v0, v1, :cond_6d

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_92

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_92

    const/4 v3, 0x3

    goto :goto_a1

    :cond_6d
    const/16 v1, 0x68

    const/16 v4, 0x73

    if-ne v0, v1, :cond_82

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_92

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_92

    goto :goto_a1

    :cond_82
    if-ne v0, v4, :cond_92

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_92

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_92

    const/4 v3, 0x2

    goto :goto_a1

    :cond_92
    :goto_92
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_94
    if-eqz v0, :cond_a0

    if-eq v0, p1, :cond_a0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a0

    const/4 v3, 0x0

    goto :goto_a1

    :cond_a0
    move v3, v1

    :goto_a1
    return v3
.end method

.method protected findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0xb

    return p1

    :cond_b
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p1, 0x9

    return p1

    :cond_16
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/16 p1, 0xc

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Map"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 11

    const/16 v0, 0xb

    if-eq p1, v0, :cond_50

    const/16 v0, 0xc

    if-eq p1, v0, :cond_45

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18  #0xa
    const-string v1, "forEach"

    goto :goto_30

    :pswitch_1b  #0x9
    const-string v0, "entries"

    goto :goto_3b

    :pswitch_1e  #0x8
    const-string/jumbo v0, "values"

    goto :goto_3b

    :pswitch_22  #0x7
    const-string v0, "keys"

    goto :goto_3b

    :pswitch_25  #0x6
    const-string v0, "clear"

    goto :goto_3b

    :pswitch_28  #0x5
    const-string v1, "has"

    goto :goto_30

    :pswitch_2b  #0x4
    const-string v1, "delete"

    goto :goto_30

    :pswitch_2e  #0x3
    const-string v1, "get"

    :goto_30
    move-object v4, v1

    const/4 v6, 0x1

    goto :goto_3d

    :pswitch_33  #0x2
    const/4 v0, 0x2

    const-string v1, "set"

    move-object v4, v1

    const/4 v6, 0x2

    goto :goto_3d

    :pswitch_39  #0x1
    const-string v0, "constructor"

    :goto_3b
    move-object v4, v0

    const/4 v6, 0x0

    :goto_3d
    sget-object v2, Lorg/mozilla/javascript/NativeMap;->MAP_TAG:Ljava/lang/Object;

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_45
    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeMap;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void

    :cond_50
    sget-object v4, Lorg/mozilla/javascript/NativeMap;->MAP_TAG:Ljava/lang/Object;

    sget-object v6, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    const/4 v8, 0x0

    const-string v7, "get size"

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_39  #00000001
        :pswitch_33  #00000002
        :pswitch_2e  #00000003
        :pswitch_2b  #00000004
        :pswitch_28  #00000005
        :pswitch_25  #00000006
        :pswitch_22  #00000007
        :pswitch_1e  #00000008
        :pswitch_1b  #00000009
        :pswitch_18  #0000000a
    .end packed-switch
.end method
