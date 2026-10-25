.class public Lorg/mozilla/javascript/TopLevel;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "TopLevel.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x40812d88f46a4e44L


# instance fields
.field private ctors:Ljava/util/EnumMap;

.field private errors:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/mozilla/javascript/TopLevel;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method public static getBuiltinCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Function;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/TopLevel;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/TopLevel;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/TopLevel;->getBuiltinCtor(Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/BaseFunction;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->GeneratorFunction:Lorg/mozilla/javascript/TopLevel$Builtins;

    if-ne p2, v0, :cond_15

    const-string p2, "__GeneratorFunction"

    goto :goto_19

    :cond_15
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    :goto_19
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p0

    return-object p0
.end method

.method public static getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    instance-of v0, p0, Lorg/mozilla/javascript/TopLevel;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/TopLevel;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->GeneratorFunction:Lorg/mozilla/javascript/TopLevel$Builtins;

    if-ne p1, v0, :cond_15

    const-string p1, "__GeneratorFunction"

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_19
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method static getNativeErrorCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$NativeErrors;)Lorg/mozilla/javascript/Function;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/TopLevel;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/TopLevel;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/TopLevel;->getNativeErrorCtor(Lorg/mozilla/javascript/TopLevel$NativeErrors;)Lorg/mozilla/javascript/BaseFunction;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cacheBuiltins(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 10

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/mozilla/javascript/TopLevel;->ctors:Ljava/util/EnumMap;

    invoke-static {}, Lorg/mozilla/javascript/TopLevel$Builtins;->values()[Lorg/mozilla/javascript/TopLevel$Builtins;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_3a

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v6, :cond_28

    iget-object v6, p0, Lorg/mozilla/javascript/TopLevel;->ctors:Ljava/util/EnumMap;

    check-cast v5, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {v6, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_28
    sget-object v5, Lorg/mozilla/javascript/TopLevel$Builtins;->GeneratorFunction:Lorg/mozilla/javascript/TopLevel$Builtins;

    if-ne v4, v5, :cond_37

    iget-object v5, p0, Lorg/mozilla/javascript/TopLevel;->ctors:Ljava/util/EnumMap;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/BaseFunction;->initAsGeneratorFunction(Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {v5, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_3a
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/mozilla/javascript/TopLevel;->errors:Ljava/util/EnumMap;

    invoke-static {}, Lorg/mozilla/javascript/TopLevel$NativeErrors;->values()[Lorg/mozilla/javascript/TopLevel$NativeErrors;

    move-result-object p1

    array-length p2, p1

    :goto_48
    if-ge v2, p2, :cond_62

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lorg/mozilla/javascript/TopLevel;->errors:Ljava/util/EnumMap;

    check-cast v1, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {v3, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_62
    return-void
.end method

.method public getBuiltinCtor(Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/BaseFunction;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/TopLevel;->ctors:Ljava/util/EnumMap;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/BaseFunction;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getBuiltinPrototype(Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/TopLevel;->getBuiltinCtor(Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/BaseFunction;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    instance-of v1, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_14

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    :cond_14
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "global"

    return-object v0
.end method

.method getNativeErrorCtor(Lorg/mozilla/javascript/TopLevel$NativeErrors;)Lorg/mozilla/javascript/BaseFunction;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/TopLevel;->errors:Ljava/util/EnumMap;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/BaseFunction;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method
