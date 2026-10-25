.class public Lorg/mozilla/javascript/NativeSet;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeSet.java"


# static fields
.field static final GETSIZE:Lorg/mozilla/javascript/SymbolKey;

.field static final ITERATOR_TAG:Ljava/lang/String; = "Set Iterator"

.field private static final Id_add:I = 0x2

.field private static final Id_clear:I = 0x5

.field private static final Id_constructor:I = 0x1

.field private static final Id_delete:I = 0x3

.field private static final Id_entries:I = 0x7

.field private static final Id_forEach:I = 0x8

.field private static final Id_has:I = 0x4

.field private static final Id_keys:I = 0x6

.field private static final Id_values:I = 0x6

.field private static final MAX_PROTOTYPE_ID:I = 0xa

.field private static final SET_TAG:Ljava/lang/Object;

.field private static final SymbolId_getSize:I = 0x9

.field private static final SymbolId_toStringTag:I = 0xa

.field private static final serialVersionUID:J = -0x7528c3c8668835daL


# instance fields
.field private final entries:Lorg/mozilla/javascript/Hashtable;

.field private instanceOfSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Set"

    sput-object v0, Lorg/mozilla/javascript/NativeSet;->SET_TAG:Ljava/lang/Object;

    new-instance v0, Lorg/mozilla/javascript/SymbolKey;

    const-string v1, "[Symbol.getSize]"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/SymbolKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/Hashtable;

    invoke-direct {v0}, Lorg/mozilla/javascript/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeSet;->instanceOfSet:Z

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/NativeSet;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeSet;-><init>()V

    const/16 v1, 0xa

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

.method private js_add(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_13

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    :cond_13
    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1, p1}, Lorg/mozilla/javascript/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private js_clear()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable;->clear()V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private js_delete(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

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
    .registers 11

    instance-of v0, p3, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_3e

    check-cast p3, Lorg/mozilla/javascript/Callable;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Hashtable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

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

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v3, v3, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    aput-object p0, v4, v3

    invoke-interface {p3, p1, p2, v2, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_3b
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_3e
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_44

    :goto_43
    throw p1

    :goto_44
    goto :goto_43
.end method

.method private js_getSize()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private js_has(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Hashtable;->has(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeSet;->entries:Lorg/mozilla/javascript/Hashtable;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Hashtable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "Set Iterator"

    invoke-direct {v0, p1, v2, p2, v1}, Lorg/mozilla/javascript/NativeCollectionIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/NativeCollectionIterator$Type;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V
    .registers 9

    if-eqz p3, :cond_62

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_62

    :cond_b
    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "add"

    invoke-static {v0, v1, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    new-instance v1, Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {v1, p0, p1, p3}, Lorg/mozilla/javascript/IteratorLikeIterable;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :try_start_34
    invoke-virtual {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object p3

    :goto_38
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v3, :cond_48

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_48
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-interface {v0, p0, p1, p2, v3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_34 .. :try_end_51} :catchall_56

    goto :goto_38

    :cond_52
    invoke-virtual {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    return-void

    :catchall_56
    move-exception p0

    :try_start_57
    throw p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p1

    :try_start_59
    invoke-virtual {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_61
    throw p1

    :cond_62
    :goto_62
    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;
    .registers 3

    if-eqz p0, :cond_13

    :try_start_2
    check-cast p0, Lorg/mozilla/javascript/NativeSet;

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeSet;->instanceOfSet:Z

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

    sget-object v0, Lorg/mozilla/javascript/NativeSet;->SET_TAG:Ljava/lang/Object;

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

    packed-switch v0, :pswitch_data_c0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Set.prototype has no method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_31  #0x9
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeSet;->js_getSize()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3a  #0x8
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

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
    invoke-direct {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeSet;->js_forEach(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_53  #0x7
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeSet;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5e  #0x6
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->VALUES:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/NativeSet;->js_iterator(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeCollectionIterator$Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_69  #0x5
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeSet;->js_clear()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_72  #0x4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_7c

    aget-object p2, p5, v2

    goto :goto_7e

    :cond_7c
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_7e
    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeSet;->js_has(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_83  #0x3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_8d

    aget-object p2, p5, v2

    goto :goto_8f

    :cond_8d
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_8f
    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeSet;->js_delete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_94  #0x2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeSet;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeSet;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_9e

    aget-object p2, p5, v2

    goto :goto_a0

    :cond_9e
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_a0
    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeSet;->js_add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a5  #0x1
    if-nez p4, :cond_b7

    new-instance p1, Lorg/mozilla/javascript/NativeSet;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeSet;-><init>()V

    iput-boolean v1, p1, Lorg/mozilla/javascript/NativeSet;->instanceOfSet:Z

    array-length p4, p5

    if-lez p4, :cond_b6

    aget-object p4, p5, v2

    invoke-static {p2, p3, p1, p4}, Lorg/mozilla/javascript/NativeSet;->loadFromIterable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;)V

    :cond_b6
    return-object p1

    :cond_b7
    const-string p1, "msg.no.new"

    const-string p2, "Set"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_a5  #00000001
        :pswitch_94  #00000002
        :pswitch_83  #00000003
        :pswitch_72  #00000004
        :pswitch_69  #00000005
        :pswitch_5e  #00000006
        :pswitch_53  #00000007
        :pswitch_3a  #00000008
        :pswitch_31  #00000009
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x64

    const/4 v8, 0x6

    const/4 v9, 0x0

    if-eq v0, v4, :cond_4f

    if-eq v0, v3, :cond_4b

    if-eq v0, v2, :cond_47

    if-eq v0, v8, :cond_35

    if-eq v0, v1, :cond_21

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1d

    goto :goto_78

    :cond_1d
    const-string v0, "constructor"

    const/4 v1, 0x1

    goto :goto_7a

    :cond_21
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_2c

    const-string v0, "entries"

    goto :goto_7a

    :cond_2c
    const/16 v1, 0x66

    if-ne v0, v1, :cond_78

    const/16 v1, 0x8

    const-string v0, "forEach"

    goto :goto_7a

    :cond_35
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_3f

    const-string v0, "delete"

    const/4 v1, 0x3

    goto :goto_7a

    :cond_3f
    const/16 v1, 0x76

    if-ne v0, v1, :cond_78

    const-string/jumbo v0, "values"

    goto :goto_4d

    :cond_47
    const-string v0, "clear"

    const/4 v1, 0x5

    goto :goto_7a

    :cond_4b
    const-string v0, "keys"

    :goto_4d
    const/4 v1, 0x6

    goto :goto_7a

    :cond_4f
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_65

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_78

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_78

    const/4 v3, 0x2

    goto :goto_87

    :cond_65
    const/16 v2, 0x68

    if-ne v0, v2, :cond_78

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x73

    if-ne v0, v2, :cond_78

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_78

    goto :goto_87

    :cond_78
    :goto_78
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7a
    if-eqz v0, :cond_86

    if-eq v0, p1, :cond_86

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    const/4 v3, 0x0

    goto :goto_87

    :cond_86
    move v3, v1

    :goto_87
    return v3
.end method

.method protected findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0x9

    return p1

    :cond_b
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p1, 0x6

    return p1

    :cond_15
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/16 p1, 0xa

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Set"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 11

    const/16 v0, 0x9

    if-eq p1, v0, :cond_47

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3c

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_54

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18  #0x8
    const-string v1, "forEach"

    goto :goto_2d

    :pswitch_1b  #0x7
    const-string v0, "entries"

    goto :goto_32

    :pswitch_1e  #0x6
    const-string/jumbo v0, "values"

    goto :goto_32

    :pswitch_22  #0x5
    const-string v0, "clear"

    goto :goto_32

    :pswitch_25  #0x4
    const-string v1, "has"

    goto :goto_2d

    :pswitch_28  #0x3
    const-string v1, "delete"

    goto :goto_2d

    :pswitch_2b  #0x2
    const-string v1, "add"

    :goto_2d
    move-object v4, v1

    const/4 v6, 0x1

    goto :goto_34

    :pswitch_30  #0x1
    const-string v0, "constructor"

    :goto_32
    move-object v4, v0

    const/4 v6, 0x0

    :goto_34
    sget-object v2, Lorg/mozilla/javascript/NativeSet;->SET_TAG:Ljava/lang/Object;

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_3c
    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSet;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void

    :cond_47
    sget-object v4, Lorg/mozilla/javascript/NativeSet;->SET_TAG:Ljava/lang/Object;

    sget-object v6, Lorg/mozilla/javascript/NativeSet;->GETSIZE:Lorg/mozilla/javascript/SymbolKey;

    const/4 v8, 0x0

    const-string v7, "get size"

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_30  #00000001
        :pswitch_2b  #00000002
        :pswitch_28  #00000003
        :pswitch_25  #00000004
        :pswitch_22  #00000005
        :pswitch_1e  #00000006
        :pswitch_1b  #00000007
        :pswitch_18  #00000008
    .end packed-switch
.end method
