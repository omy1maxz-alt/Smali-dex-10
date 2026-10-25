.class public final Lorg/mozilla/javascript/NativeJSON;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeJSON.java"


# static fields
.field private static final Id_parse:I = 0x2

.field private static final Id_stringify:I = 0x3

.field private static final Id_toSource:I = 0x1

.field private static final JSON_TAG:Ljava/lang/Object;

.field private static final LAST_METHOD_ID:I = 0x3

.field private static final MAX_ID:I = 0x3

.field private static final MAX_STRINGIFY_GAP_LENGTH:I = 0xa

.field private static final serialVersionUID:J = -0x3f635fb98b5ee348L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "JSON"

    sput-object v0, Lorg/mozilla/javascript/NativeJSON;->JSON_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeJSON;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeJSON;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p1, :cond_18

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_18
    const/4 p1, 0x2

    const-string v1, "JSON"

    invoke-static {p0, v1, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static ja(Lorg/mozilla/javascript/NativeArray;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;
    .registers 11

    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_cc

    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    :goto_30
    cmp-long v6, v4, v2

    if-gez v6, :cond_5e

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-lez v8, :cond_44

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0, p1}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_4d

    :cond_44
    long-to-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, p0, p1}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    move-result-object v6

    :goto_4d
    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v6, v7, :cond_57

    const-string v6, "null"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_57
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5a
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_30

    :cond_5e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_67

    const-string p0, "[]"

    goto :goto_c4

    :cond_67
    iget-object p0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0x5d

    if-nez p0, :cond_8c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v1, v3}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c4

    :cond_8c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_c4
    iget-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    return-object p0

    :cond_cc
    const-string p0, "msg.cyclic.value"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    goto :goto_d4

    :goto_d3
    throw p0

    :goto_d4
    goto :goto_d3
.end method

.method private static jo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;
    .registers 10

    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_fc

    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    iget-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->propertyList:Ljava/util/List;

    if-eqz v1, :cond_2e

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_32

    :cond_2e
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v1

    :goto_32
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_8c

    aget-object v5, v1, v4

    invoke-static {v5, p0, p1}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v6, v7, :cond_89

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/NativeJSON;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_77

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_8c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_96

    const-string/jumbo p0, "{}"

    goto :goto_f4

    :cond_96
    iget-object p0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x7d

    if-nez p0, :cond_bb

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_f4

    :cond_bb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_f4
    iget-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    return-object p0

    :cond_fc
    const-string p0, "msg.cyclic.value"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    goto :goto_104

    :goto_103
    throw p0

    :goto_104
    goto :goto_103
.end method

.method private static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_39

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_39

    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    :goto_39
    return-object v0
.end method

.method private static parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/json/JsonParser;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/json/JsonParser;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catch Lorg/mozilla/javascript/json/JsonParser$ParseException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntaxError"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Callable;)Ljava/lang/Object;
    .registers 6

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeJSON;->parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-static {p0, p1, p3, v0, v1}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_79

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_71

    const/16 v6, 0xd

    if-eq v5, v6, :cond_6b

    if-eq v5, v1, :cond_65

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_5f

    packed-switch v5, :pswitch_data_82

    const/16 v6, 0x20

    if-ge v5, v6, :cond_49

    const-string v6, "\\u"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, "%04x"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :cond_49
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_76

    :pswitch_4d  #0xa
    const-string v5, "\\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :pswitch_53  #0x9
    const-string v5, "\\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :pswitch_59  #0x8
    const-string v5, "\\b"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :cond_5f
    const-string v5, "\\\\"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :cond_65
    const-string v5, "\\\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :cond_6b
    const-string v5, "\\r"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :cond_71
    const-string v5, "\\f"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_82
    .packed-switch 0x8
        :pswitch_59  #00000008
        :pswitch_53  #00000009
        :pswitch_4d  #0000000a
    .end packed-switch
.end method

.method private static repeat(CI)Ljava/lang/String;
    .registers 2

    new-array p1, p1, [C

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([CC)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;
    .registers 10

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_c
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v0

    :goto_17
    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    const-string/jumbo v4, "toJSON"

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/mozilla/javascript/Callable;

    if-eqz v5, :cond_3b

    iget-object v0, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->cx:Lorg/mozilla/javascript/Context;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {v0, v1, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->callMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_3b
    iget-object v1, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->replacer:Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_4e

    iget-object v4, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->cx:Lorg/mozilla/javascript/Context;

    iget-object v5, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->scope:Lorg/mozilla/javascript/Scriptable;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    aput-object v0, v6, v2

    invoke-interface {v1, v4, v5, p1, v6}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_4e
    instance-of p0, v0, Lorg/mozilla/javascript/NativeNumber;

    if-eqz p0, :cond_5b

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_70

    :cond_5b
    instance-of p0, v0, Lorg/mozilla/javascript/NativeString;

    if-eqz p0, :cond_64

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    :cond_64
    instance-of p0, v0, Lorg/mozilla/javascript/NativeBoolean;

    if-eqz p0, :cond_70

    check-cast v0, Lorg/mozilla/javascript/NativeBoolean;

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/NativeBoolean;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_70
    :goto_70
    const-string p0, "null"

    if-nez v0, :cond_75

    return-object p0

    :cond_75
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    const-string/jumbo p0, "true"

    return-object p0

    :cond_81
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    const-string p0, "false"

    return-object p0

    :cond_8c
    instance-of p1, v0, Ljava/lang/CharSequence;

    if-eqz p1, :cond_99

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeJSON;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_99
    instance-of p1, v0, Ljava/lang/Number;

    if-eqz p1, :cond_bb

    move-object p1, v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_ba

    const-wide/high16 v1, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpl-double v3, p1, v1

    if-eqz v3, :cond_ba

    const-wide/high16 v1, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    cmpl-double v3, p1, v1

    if-eqz v3, :cond_ba

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_ba
    return-object p0

    :cond_bb
    instance-of p0, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p0, :cond_d5

    instance-of p0, v0, Lorg/mozilla/javascript/Callable;

    if-nez p0, :cond_d5

    instance-of p0, v0, Lorg/mozilla/javascript/NativeArray;

    if-eqz p0, :cond_ce

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    invoke-static {v0, p2}, Lorg/mozilla/javascript/NativeJSON;->ja(Lorg/mozilla/javascript/NativeArray;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ce
    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p2}, Lorg/mozilla/javascript/NativeJSON;->jo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d5
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method public static stringify(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    instance-of v0, p3, Lorg/mozilla/javascript/Callable;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    check-cast p3, Lorg/mozilla/javascript/Callable;

    move-object v9, p3

    move-object v10, v1

    goto :goto_53

    :cond_a
    instance-of v0, p3, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_51

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    check-cast p3, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p3}, Lorg/mozilla/javascript/NativeArray;->getIndexIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, v3, p3}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_4a

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_3a

    goto :goto_4a

    :cond_3a
    instance-of v4, v3, Lorg/mozilla/javascript/NativeString;

    if-nez v4, :cond_42

    instance-of v4, v3, Lorg/mozilla/javascript/NativeNumber;

    if-eqz v4, :cond_1d

    :cond_42
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_4a
    :goto_4a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_4e
    move-object v10, v0

    move-object v9, v1

    goto :goto_53

    :cond_51
    move-object v9, v1

    move-object v10, v9

    :goto_53
    instance-of p3, p4, Lorg/mozilla/javascript/NativeNumber;

    if-eqz p3, :cond_60

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    goto :goto_68

    :cond_60
    instance-of p3, p4, Lorg/mozilla/javascript/NativeString;

    if-eqz p3, :cond_68

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :cond_68
    :goto_68
    instance-of p3, p4, Ljava/lang/Number;

    const/4 v0, 0x0

    const/16 v1, 0xa

    const-string v2, ""

    if-eqz p3, :cond_85

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-int p3, p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_83

    const/16 p4, 0x20

    invoke-static {p4, p3}, Lorg/mozilla/javascript/NativeJSON;->repeat(CI)Ljava/lang/String;

    move-result-object p3

    goto :goto_95

    :cond_83
    move-object p3, v2

    goto :goto_95

    :cond_85
    instance-of p3, p4, Ljava/lang/String;

    if-eqz p3, :cond_99

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v1, :cond_97

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :goto_95
    move-object v8, p3

    goto :goto_9a

    :cond_97
    move-object v8, p4

    goto :goto_9a

    :cond_99
    move-object v8, v2

    :goto_9a
    new-instance p3, Lorg/mozilla/javascript/NativeJSON$StringifyState;

    const-string v7, ""

    move-object v4, p3

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lorg/mozilla/javascript/NativeJSON$StringifyState;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Callable;Ljava/util/List;)V

    new-instance p0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0, v2, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {v2, p0, p3}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    instance-of v0, p4, Ljava/lang/Number;

    if-eqz v0, :cond_10

    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p3, v0, p3}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_10
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0, p3}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    :goto_17
    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    const/4 v2, 0x0

    if-eqz v1, :cond_9f

    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    instance-of v3, v1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v3, :cond_63

    move-object v3, v1

    check-cast v3, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {v3}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    :goto_2c
    cmp-long v7, v5, v3

    if-gez v7, :cond_9f

    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v5, v7

    if-lez v9, :cond_4b

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1, p2, v1, v7}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v8, v9, :cond_47

    invoke-interface {v1, v7}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    goto :goto_5f

    :cond_47
    invoke-interface {v1, v7, v1, v8}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_5f

    :cond_4b
    long-to-int v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p0, p1, p2, v1, v8}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v8, v9, :cond_5c

    invoke-interface {v1, v7}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    goto :goto_5f

    :cond_5c
    invoke-interface {v1, v7, v1, v8}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_5f
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    goto :goto_2c

    :cond_63
    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_69
    if-ge v5, v4, :cond_9f

    aget-object v6, v3, v5

    invoke-static {p0, p1, p2, v1, v6}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v7, v8, :cond_89

    instance-of v7, v6, Ljava/lang/Number;

    if-eqz v7, :cond_83

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v1, v6}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    goto :goto_9c

    :cond_83
    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    goto :goto_9c

    :cond_89
    instance-of v8, v6, Ljava/lang/Number;

    if-eqz v8, :cond_97

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v1, v6, v1, v7}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_9c

    :cond_97
    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6, v1, v7}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_9c
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_9f
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v2

    const/4 p4, 0x1

    aput-object v0, v1, p4

    invoke-interface {p2, p0, p1, p3, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lorg/mozilla/javascript/NativeJSON;->JSON_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_5d

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_44

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3a

    array-length p1, p5

    if-eq p1, p4, :cond_2e

    if-eq p1, v1, :cond_28

    if-eq p1, v3, :cond_26

    move-object p1, v2

    move-object p4, p1

    goto :goto_35

    :cond_26
    aget-object v2, p5, v1

    :cond_28
    aget-object p1, p5, p4

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_2f

    :cond_2e
    move-object p1, v2

    :goto_2f
    aget-object p4, p5, v0

    move-object v4, p4

    move-object p4, p1

    move-object p1, v2

    move-object v2, v4

    :goto_35
    invoke-static {p2, p3, v2, p1, p4}, Lorg/mozilla/javascript/NativeJSON;->stringify(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3a
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_44
    invoke-static {p5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    array-length v0, p5

    if-le v0, p4, :cond_4d

    aget-object v2, p5, p4

    :cond_4d
    instance-of p4, v2, Lorg/mozilla/javascript/Callable;

    if-eqz p4, :cond_58

    check-cast v2, Lorg/mozilla/javascript/Callable;

    invoke-static {p2, p3, p1, v2}, Lorg/mozilla/javascript/NativeJSON;->parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_58
    invoke-static {p2, p3, p1}, Lorg/mozilla/javascript/NativeJSON;->parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5d
    const-string p1, "JSON"

    return-object p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_21

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_26

    :cond_13
    const/4 v0, 0x3

    const-string/jumbo v1, "stringify"

    move-object v0, v1

    const/4 v1, 0x3

    goto :goto_26

    :cond_1a
    const/4 v0, 0x1

    const-string/jumbo v1, "toSource"

    move-object v0, v1

    const/4 v1, 0x1

    goto :goto_26

    :cond_21
    const/4 v0, 0x2

    const-string v1, "parse"

    move-object v0, v1

    const/4 v1, 0x2

    :goto_26
    if-eqz v0, :cond_31

    if-eq v0, p1, :cond_31

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v2, v1

    :goto_32
    return v2
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "JSON"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x3

    if-gt p1, v0, :cond_27

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_1d

    if-eq p1, v2, :cond_19

    if-ne p1, v0, :cond_f

    const-string/jumbo v1, "stringify"

    goto :goto_21

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const-string v1, "parse"

    const/4 v0, 0x2

    goto :goto_21

    :cond_1d
    const/4 v0, 0x0

    const-string/jumbo v1, "toSource"

    :goto_21
    sget-object v2, Lorg/mozilla/javascript/NativeJSON;->JSON_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
