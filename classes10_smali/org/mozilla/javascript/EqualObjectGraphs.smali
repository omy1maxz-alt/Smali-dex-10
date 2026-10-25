.class final Lorg/mozilla/javascript/EqualObjectGraphs;
.super Ljava/lang/Object;
.source "EqualObjectGraphs.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final instance:Ljava/lang/ThreadLocal;


# instance fields
.field private final currentlyCompared:Ljava/util/Map;

.field private final knownEquals:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$8Bh3bczntrX7D8FwHeSh9zg2uxg(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->lambda$getSortedIds$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/EqualObjectGraphs;->instance:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/Map;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->currentlyCompared:Ljava/util/Map;

    return-void
.end method

.method private equalGraphsNoMemo(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    instance-of v0, p2, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_1d

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1

    :cond_1f
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_34

    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_32

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalScriptables(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    return v1

    :cond_34
    instance-of v0, p1, Lorg/mozilla/javascript/ConsString;

    if-eqz v0, :cond_43

    check-cast p1, Lorg/mozilla/javascript/ConsString;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ConsString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_43
    instance-of v0, p2, Lorg/mozilla/javascript/ConsString;

    if-eqz v0, :cond_52

    check-cast p2, Lorg/mozilla/javascript/ConsString;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ConsString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_52
    instance-of v0, p1, Lorg/mozilla/javascript/SymbolKey;

    if-eqz v0, :cond_6f

    instance-of v0, p2, Lorg/mozilla/javascript/SymbolKey;

    if-eqz v0, :cond_6d

    check-cast p1, Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p1}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p2}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    :goto_6e
    return v1

    :cond_6f
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_84

    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_82

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalObjectArrays([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :goto_83
    return v1

    :cond_84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-static {p1, p2}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_93
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a8

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_a6

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalLists(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_a6

    goto :goto_a7

    :cond_a6
    const/4 v1, 0x0

    :goto_a7
    return v1

    :cond_a8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_bd

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_bb

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalMaps(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_bb

    goto :goto_bc

    :cond_bb
    const/4 v1, 0x0

    :goto_bc
    return v1

    :cond_bd
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_d2

    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_d0

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalSets(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_d0

    goto :goto_d1

    :cond_d0
    const/4 v1, 0x0

    :goto_d1
    return v1

    :cond_d2
    instance-of v0, p1, Lorg/mozilla/javascript/NativeGlobal;

    if-eqz v0, :cond_d9

    instance-of p1, p2, Lorg/mozilla/javascript/NativeGlobal;

    return p1

    :cond_d9
    instance-of v0, p1, Lorg/mozilla/javascript/JavaAdapter;

    if-eqz v0, :cond_e0

    instance-of p1, p2, Lorg/mozilla/javascript/JavaAdapter;

    return p1

    :cond_e0
    instance-of v0, p1, Lorg/mozilla/javascript/NativeJavaTopPackage;

    if-eqz v0, :cond_e7

    instance-of p1, p2, Lorg/mozilla/javascript/NativeJavaTopPackage;

    return p1

    :cond_e7
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static equalInterpretedFunctions(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/InterpretedFunction;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/InterpretedFunction;->getEncodedSource()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/mozilla/javascript/InterpretedFunction;->getEncodedSource()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private equalLists(Ljava/util/List;Ljava/util/List;)Z
    .registers 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return v2

    :cond_2f
    const/4 p1, 0x1

    return p1
.end method

.method private equalMaps(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 8

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    invoke-static {p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->sortedEntries(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->sortedEntries(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_48
    return v2

    :cond_49
    const/4 p1, 0x1

    return p1
.end method

.method private equalObjectArrays([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_18

    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method private equalScriptables(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 10

    invoke-static {p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->getSortedIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->getSortedIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalObjectArrays([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    return v3

    :cond_10
    array-length v2, v0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_2a

    aget-object v5, v0, v4

    invoke-static {p1, v5}, Lorg/mozilla/javascript/EqualObjectGraphs;->getValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-static {p2, v6}, Lorg/mozilla/javascript/EqualObjectGraphs;->getValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    return v3

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_2a
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    return v3

    :cond_39
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    return v3

    :cond_48
    instance-of v0, p1, Lorg/mozilla/javascript/NativeContinuation;

    const/4 v1, 0x1

    if-eqz v0, :cond_5d

    instance-of v0, p2, Lorg/mozilla/javascript/NativeContinuation;

    if-eqz v0, :cond_5c

    check-cast p1, Lorg/mozilla/javascript/NativeContinuation;

    check-cast p2, Lorg/mozilla/javascript/NativeContinuation;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeContinuation;->equalImplementations(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/NativeContinuation;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const/4 v3, 0x1

    :cond_5c
    return v3

    :cond_5d
    instance-of v0, p1, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v0, :cond_66

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_66
    instance-of v0, p1, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_7a

    instance-of v0, p2, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_79

    check-cast p1, Lorg/mozilla/javascript/IdFunctionObject;

    check-cast p2, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/IdFunctionObject;->equalObjectGraphs(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/EqualObjectGraphs;)Z

    move-result p1

    if-eqz p1, :cond_79

    const/4 v3, 0x1

    :cond_79
    return v3

    :cond_7a
    instance-of v0, p1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v0, :cond_8e

    instance-of v0, p2, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v0, :cond_8d

    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    check-cast p2, Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalInterpretedFunctions(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/InterpretedFunction;)Z

    move-result p1

    if-eqz p1, :cond_8d

    const/4 v3, 0x1

    :cond_8d
    return v3

    :cond_8e
    instance-of v0, p1, Lorg/mozilla/javascript/ArrowFunction;

    if-eqz v0, :cond_a2

    instance-of v0, p2, Lorg/mozilla/javascript/ArrowFunction;

    if-eqz v0, :cond_a1

    check-cast p1, Lorg/mozilla/javascript/ArrowFunction;

    check-cast p2, Lorg/mozilla/javascript/ArrowFunction;

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/ArrowFunction;->equalObjectGraphs(Lorg/mozilla/javascript/ArrowFunction;Lorg/mozilla/javascript/ArrowFunction;Lorg/mozilla/javascript/EqualObjectGraphs;)Z

    move-result p1

    if-eqz p1, :cond_a1

    const/4 v3, 0x1

    :cond_a1
    return v3

    :cond_a2
    instance-of v0, p1, Lorg/mozilla/javascript/BoundFunction;

    if-eqz v0, :cond_b6

    instance-of v0, p2, Lorg/mozilla/javascript/BoundFunction;

    if-eqz v0, :cond_b5

    check-cast p1, Lorg/mozilla/javascript/BoundFunction;

    check-cast p2, Lorg/mozilla/javascript/BoundFunction;

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/BoundFunction;->equalObjectGraphs(Lorg/mozilla/javascript/BoundFunction;Lorg/mozilla/javascript/BoundFunction;Lorg/mozilla/javascript/EqualObjectGraphs;)Z

    move-result p1

    if-eqz p1, :cond_b5

    const/4 v3, 0x1

    :cond_b5
    return v3

    :cond_b6
    instance-of v0, p1, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_d2

    instance-of v0, p2, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_d1

    check-cast p1, Lorg/mozilla/javascript/NativeSymbol;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p1

    check-cast p2, Lorg/mozilla/javascript/NativeSymbol;

    invoke-virtual {p2}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d1

    const/4 v3, 0x1

    :cond_d1
    return v3

    :cond_d2
    return v1
.end method

.method private equalSets(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->sortedSet(Ljava/util/Set;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->sortedSet(Ljava/util/Set;)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalObjectArrays([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static getIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_c

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    instance-of v0, p0, Lorg/mozilla/javascript/debug/DebuggableObject;

    if-eqz v0, :cond_17

    check-cast p0, Lorg/mozilla/javascript/debug/DebuggableObject;

    invoke-interface {p0}, Lorg/mozilla/javascript/debug/DebuggableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getSortedIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/EqualObjectGraphs;->getIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/EqualObjectGraphs$$ExternalSyntheticLambda0;->INSTANCE:Lorg/mozilla/javascript/EqualObjectGraphs$$ExternalSyntheticLambda0;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method private static getSymbolName(Lorg/mozilla/javascript/Symbol;)Ljava/lang/String;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/SymbolKey;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_1a

    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method private static getValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1a
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_25

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_25
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method private static synthetic lambda$getSortedIds$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz v0, :cond_1b

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0

    :cond_12
    instance-of p0, p1, Ljava/lang/String;

    if-nez p0, :cond_1a

    instance-of p0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz p0, :cond_59

    :cond_1a
    return v1

    :cond_1b
    instance-of v0, p0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2d

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2d
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_32

    return v2

    :cond_32
    instance-of p0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz p0, :cond_59

    return v1

    :cond_37
    instance-of v0, p0, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_59

    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_50

    check-cast p0, Lorg/mozilla/javascript/Symbol;

    invoke-static {p0}, Lorg/mozilla/javascript/EqualObjectGraphs;->getSymbolName(Lorg/mozilla/javascript/Symbol;)Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-static {p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->getSymbolName(Lorg/mozilla/javascript/Symbol;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_50
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_58

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_59

    :cond_58
    return v2

    :cond_59
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method private static sortedEntries(Ljava/util/Map;)Ljava/util/Iterator;
    .registers 2

    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_b
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static sortedSet(Ljava/util/Set;)[Ljava/lang/Object;
    .registers 1

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method

.method static withThreadLocal(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lorg/mozilla/javascript/EqualObjectGraphs;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/EqualObjectGraphs;

    if-nez v1, :cond_22

    new-instance v1, Lorg/mozilla/javascript/EqualObjectGraphs;

    invoke-direct {v1}, Lorg/mozilla/javascript/EqualObjectGraphs;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :try_start_13
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    :catchall_1b
    move-exception p0

    sget-object v0, Lorg/mozilla/javascript/EqualObjectGraphs;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0

    :cond_22
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    if-nez p2, :cond_a

    goto :goto_46

    :cond_a
    iget-object v2, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->currentlyCompared:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_13

    return v0

    :cond_13
    if-eqz v2, :cond_16

    return v1

    :cond_16
    iget-object v2, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_1f

    return v0

    :cond_1f
    if-eqz v2, :cond_22

    return v1

    :cond_22
    iget-object v0, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    return v1

    :cond_2b
    iget-object v0, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->currentlyCompared:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphsNoMemo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v1, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget-object p2, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->currentlyCompared:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_46
    :goto_46
    return v1
.end method
