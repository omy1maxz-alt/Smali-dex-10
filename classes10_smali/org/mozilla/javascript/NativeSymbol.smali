.class public Lorg/mozilla/javascript/NativeSymbol;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeSymbol.java"

# interfaces
.implements Lorg/mozilla/javascript/Symbol;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "Symbol"

.field private static final CONSTRUCTOR_SLOT:Ljava/lang/Object;

.field private static final ConstructorId_for:I = -0x1

.field private static final ConstructorId_keyFor:I = -0x2

.field private static final GLOBAL_TABLE_KEY:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0x5

.field private static final SymbolId_toPrimitive:I = 0x5

.field private static final SymbolId_toStringTag:I = 0x3

.field public static final TYPE_NAME:Ljava/lang/String; = "symbol"

.field private static final serialVersionUID:J = -0x82e774764cfb173L


# instance fields
.field private final key:Lorg/mozilla/javascript/SymbolKey;

.field private final symbolData:Lorg/mozilla/javascript/NativeSymbol;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/NativeSymbol;->GLOBAL_TABLE_KEY:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/NativeSymbol;->CONSTRUCTOR_SLOT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/SymbolKey;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/SymbolKey;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/NativeSymbol;)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iget-object v0, p1, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    iget-object p1, p1, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/javascript/SymbolKey;)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    iput-object p0, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-void
.end method

.method public static construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;
    .registers 5

    sget-object v0, Lorg/mozilla/javascript/NativeSymbol;->CONSTRUCTOR_SLOT:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/Context;->putThreadLocal(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_7
    const-string v1, "Symbol"

    invoke-virtual {p0, p1, v1, p2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeSymbol;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->removeThreadLocal(Ljava/lang/Object;)V

    return-object p1

    :catchall_13
    move-exception p1

    sget-object p2, Lorg/mozilla/javascript/NativeSymbol;->CONSTRUCTOR_SLOT:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Context;->removeThreadLocal(Ljava/lang/Object;)V

    throw p1
.end method

.method private static createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const-string p4, "Symbol"

    invoke-virtual {p0, p1, p4, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p2, p3, p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private getGlobalMap()Ljava/util/Map;
    .registers 4

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    sget-object v1, Lorg/mozilla/javascript/NativeSymbol;->GLOBAL_TABLE_KEY:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_18

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v2
.end method

.method private static getSelf(Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;
    .registers 2

    :try_start_0
    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_3

    return-object p0

    :catch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "msg.invalid.type"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 7

    new-instance v0, Lorg/mozilla/javascript/NativeSymbol;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeSymbol;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/NativeSymbol;->CONSTRUCTOR_SLOT:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/Context;->putThreadLocal(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_14
    const-string v2, "iterator"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string/jumbo v2, "species"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->SPECIES:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string/jumbo v2, "toStringTag"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string v2, "hasInstance"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->HAS_INSTANCE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string v2, "isConcatSpreadable"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->IS_CONCAT_SPREADABLE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string v2, "isRegExp"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->IS_REGEXP:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string/jumbo v2, "toPrimitive"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->TO_PRIMITIVE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string v2, "match"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->MATCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string v2, "replace"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->REPLACE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string v2, "search"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->SEARCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string/jumbo v2, "split"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->SPLIT:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    const-string/jumbo v2, "unscopables"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->UNSCOPABLES:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, p1, v0, v2, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V
    :try_end_6d
    .catchall {:try_start_14 .. :try_end_6d} :catchall_76

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Context;->removeThreadLocal(Ljava/lang/Object;)V

    if-eqz p2, :cond_75

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_75
    return-void

    :catchall_76
    move-exception p1

    sget-object p2, Lorg/mozilla/javascript/NativeSymbol;->CONSTRUCTOR_SLOT:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Context;->removeThreadLocal(Ljava/lang/Object;)V

    throw p1
.end method

.method private static isStrictMode()Z
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static js_constructor([Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;
    .registers 5

    array-length v0, p0

    const-string v1, ""

    if-lez v0, :cond_17

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    aget-object v0, p0, v2

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_17
    :goto_17
    array-length v0, p0

    const/4 v2, 0x1

    if-le v0, v2, :cond_25

    new-instance v0, Lorg/mozilla/javascript/NativeSymbol;

    aget-object p0, p0, v2

    check-cast p0, Lorg/mozilla/javascript/SymbolKey;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeSymbol;-><init>(Lorg/mozilla/javascript/SymbolKey;)V

    return-object v0

    :cond_25
    new-instance p0, Lorg/mozilla/javascript/NativeSymbol;

    new-instance v0, Lorg/mozilla/javascript/SymbolKey;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/SymbolKey;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeSymbol;-><init>(Lorg/mozilla/javascript/SymbolKey;)V

    return-object p0
.end method

.method private js_for(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_7

    aget-object p3, p3, v1

    goto :goto_9

    :cond_7
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_9
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeSymbol;->getGlobalMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/NativeSymbol;

    if-nez v2, :cond_25

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-static {p1, p2, v2}, Lorg/mozilla/javascript/NativeSymbol;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-object v2
.end method

.method private js_keyFor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    array-length v0, p3

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object p3, p3, v0

    goto :goto_9

    :cond_7
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_9
    instance-of v0, p3, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_3b

    check-cast p3, Lorg/mozilla/javascript/NativeSymbol;

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeSymbol;->getGlobalMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeSymbol;

    iget-object v0, v0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    iget-object v1, p3, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    if-ne v0, v1, :cond_1b

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_38
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_3b
    const-string p3, "TypeError"

    const-string v0, "Not a Symbol"

    invoke-static {p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->throwCustomError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p1

    goto :goto_45

    :goto_44
    throw p1

    :goto_45
    goto :goto_44
.end method

.method private js_valueOf()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "Symbol"

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_5a

    const/4 v1, -0x1

    if-eq v0, v1, :cond_55

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    const/4 v1, 0x5

    if-eq v0, v1, :cond_28

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_28
    invoke-static {p4}, Lorg/mozilla/javascript/NativeSymbol;->getSelf(Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeSymbol;->js_valueOf()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_31
    invoke-static {p4}, Lorg/mozilla/javascript/NativeSymbol;->getSelf(Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeSymbol;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3a
    if-nez p4, :cond_50

    sget-object p1, Lorg/mozilla/javascript/NativeSymbol;->CONSTRUCTOR_SLOT:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/Context;->getThreadLocal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_49

    invoke-static {p5}, Lorg/mozilla/javascript/NativeSymbol;->js_constructor([Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p1

    return-object p1

    :cond_49
    const-string p1, "msg.no.symbol.new"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_50
    invoke-static {p2, p3, p5}, Lorg/mozilla/javascript/NativeSymbol;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p1

    return-object p1

    :cond_55
    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/NativeSymbol;->js_for(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5a
    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/NativeSymbol;->js_keyFor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .registers 14

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    const-string v2, "Symbol"

    const/4 v3, -0x1

    const-string v4, "for"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v8, "Symbol"

    const/4 v9, -0x2

    const-string v10, "keyFor"

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_d

    const/4 v0, 0x4

    const-string/jumbo v2, "valueOf"

    goto :goto_20

    :cond_d
    const/16 v2, 0x8

    if-ne v0, v2, :cond_16

    const/4 v0, 0x2

    const-string/jumbo v2, "toString"

    goto :goto_20

    :cond_16
    const/16 v2, 0xb

    if-ne v0, v2, :cond_1e

    const/4 v0, 0x1

    const-string v2, "constructor"

    goto :goto_20

    :cond_1e
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_20
    if-eqz v2, :cond_2b

    if-eq v2, p1, :cond_2b

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v0

    :goto_2c
    return v1
.end method

.method protected findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x3

    return p1

    :cond_a
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->TO_PRIMITIVE:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x5

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Symbol"

    return-object v0
.end method

.method getKey()Lorg/mozilla/javascript/SymbolKey;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    return-object v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "symbol"

    goto :goto_e

    :cond_a
    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTypeOf()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SymbolKey;->hashCode()I

    move-result v0

    return v0
.end method

.method protected initPrototypeId(I)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Symbol"

    if-eq p1, v0, :cond_37

    const/4 v0, 0x2

    if-eq p1, v0, :cond_30

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_23

    const/4 v0, 0x5

    if-eq p1, v0, :cond_16

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeId(I)V

    goto :goto_3c

    :cond_16
    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->TO_PRIMITIVE:Lorg/mozilla/javascript/SymbolKey;

    const/4 v6, 0x1

    const-string v2, "Symbol"

    const-string v5, "Symbol.toPrimitive"

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    goto :goto_3c

    :cond_23
    const-string/jumbo v0, "valueOf"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    goto :goto_3c

    :cond_2a
    sget-object v1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    goto :goto_3c

    :cond_30
    const-string/jumbo v0, "toString"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    goto :goto_3c

    :cond_37
    const-string v0, "constructor"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    :goto_3c
    return-void
.end method

.method public isSymbol()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_10

    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/NativeSymbol;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_11

    :goto_10
    return-void

    :cond_11
    const-string p1, "msg.no.assign.symbol.strict"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_10

    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/NativeSymbol;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_11

    :goto_10
    return-void

    :cond_11
    const-string p1, "msg.no.assign.symbol.strict"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_10

    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/NativeSymbol;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_11

    :goto_10
    return-void

    :cond_11
    const-string p1, "msg.no.assign.symbol.strict"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SymbolKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
