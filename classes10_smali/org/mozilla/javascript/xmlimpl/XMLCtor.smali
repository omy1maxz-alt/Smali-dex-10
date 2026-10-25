.class Lorg/mozilla/javascript/xmlimpl/XMLCtor;
.super Lorg/mozilla/javascript/IdFunctionObject;
.source "XMLCtor.java"


# static fields
.field private static final Id_defaultSettings:I = 0x1

.field private static final Id_ignoreComments:I = 0x1

.field private static final Id_ignoreProcessingInstructions:I = 0x2

.field private static final Id_ignoreWhitespace:I = 0x3

.field private static final Id_prettyIndent:I = 0x4

.field private static final Id_prettyPrinting:I = 0x5

.field private static final Id_setSettings:I = 0x3

.field private static final Id_settings:I = 0x2

.field private static final MAX_FUNCTION_ID:I = 0x3

.field private static final MAX_INSTANCE_ID:I = 0x5

.field private static final XMLCTOR_TAG:Ljava/lang/Object;

.field static final serialVersionUID:J = -0x78d9b94928711c7dL


# instance fields
.field private options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "XMLCtor"

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->XMLCTOR_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    return-void
.end method

.method private readSettings(Lorg/mozilla/javascript/Scriptable;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x5

    if-gt v1, v2, :cond_3b

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v4, v5, :cond_17

    goto :goto_38

    :cond_17
    if-eq v1, v0, :cond_30

    const/4 v5, 0x2

    if-eq v1, v5, :cond_30

    const/4 v5, 0x3

    if-eq v1, v5, :cond_30

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2b

    if-ne v1, v2, :cond_25

    goto :goto_30

    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2b
    instance-of v2, v4, Ljava/lang/Number;

    if-nez v2, :cond_35

    goto :goto_38

    :cond_30
    :goto_30
    instance-of v2, v4, Ljava/lang/Boolean;

    if-nez v2, :cond_35

    goto :goto_38

    :cond_35
    invoke-virtual {p0, v3, v4}, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->setInstanceIdValue(ILjava/lang/Object;)V

    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3b
    return-void
.end method

.method private writeSetting(Lorg/mozilla/javascript/Scriptable;)V
    .registers 5

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x5

    if-gt v0, v1, :cond_17

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->XMLCTOR_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/BaseFunction;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_51

    const/4 p4, 0x2

    if-eq p1, p4, :cond_49

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3f

    array-length p1, p5

    if-eqz p1, :cond_37

    const/4 p1, 0x0

    aget-object p2, p5, p1

    if-eqz p2, :cond_37

    aget-object p2, p5, p1

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, p3, :cond_29

    goto :goto_37

    :cond_29
    aget-object p2, p5, p1

    instance-of p2, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_3c

    aget-object p1, p5, p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->readSettings(Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_3c

    :cond_37
    :goto_37
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setDefault()V

    :cond_3c
    :goto_3c
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_49
    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->writeSetting(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1

    :cond_51
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setDefault()V

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->writeSetting(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eq v0, v1, :cond_3a

    const/16 v1, 0xe

    if-eq v0, v1, :cond_23

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1b

    goto :goto_37

    :cond_1b
    const-string v0, "ignoreProcessingInstructions"

    const/4 v1, 0x2

    goto :goto_3d

    :cond_1f
    const-string v0, "ignoreWhitespace"

    const/4 v1, 0x3

    goto :goto_3d

    :cond_23
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_2f

    const-string v0, "ignoreComments"

    const/4 v1, 0x1

    goto :goto_3d

    :cond_2f
    const/16 v1, 0x70

    if-ne v0, v1, :cond_37

    const-string v0, "prettyPrinting"

    const/4 v1, 0x5

    goto :goto_3d

    :cond_37
    :goto_37
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_3d

    :cond_3a
    const-string v0, "prettyIndent"

    const/4 v1, 0x4

    :goto_3d
    if-eqz v0, :cond_48

    if-eq v0, p1, :cond_48

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_49

    :cond_48
    move v7, v1

    :goto_49
    if-nez v7, :cond_50

    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_50
    if-eq v7, v3, :cond_61

    if-eq v7, v4, :cond_61

    if-eq v7, v5, :cond_61

    if-eq v7, v6, :cond_61

    if-ne v7, v2, :cond_5b

    goto :goto_61

    :cond_5b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_61
    :goto_61
    const/4 p1, 0x6

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    add-int/2addr v0, v7

    invoke-static {p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_e

    const/4 v0, 0x2

    const-string/jumbo v2, "settings"

    goto :goto_21

    :cond_e
    const/16 v2, 0xb

    if-ne v0, v2, :cond_17

    const/4 v0, 0x3

    const-string/jumbo v2, "setSettings"

    goto :goto_21

    :cond_17
    const/16 v2, 0xf

    if-ne v0, v2, :cond_1f

    const/4 v0, 0x1

    const-string v2, "defaultSettings"

    goto :goto_21

    :cond_1f
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_21
    if-eqz v2, :cond_2c

    if-eq v2, p1, :cond_2c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v0

    :goto_2d
    return v1
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 4

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string p1, "prettyPrinting"

    return-object p1

    :cond_1d
    const-string p1, "prettyIndent"

    return-object p1

    :cond_20
    const-string p1, "ignoreWhitespace"

    return-object p1

    :cond_23
    const-string p1, "ignoreProcessingInstructions"

    return-object p1

    :cond_26
    const-string p1, "ignoreComments"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 4

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->isPrettyPrinting()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_25
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->getPrettyIndent()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_30
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->isIgnoreWhitespace()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3b
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->isIgnoreProcessingInstructions()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_46
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->isIgnoreComments()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected getMaxInstanceId()I
    .registers 2

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XML;

    if-nez v0, :cond_b

    instance-of p1, p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_18

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    const-string/jumbo v0, "setSettings"

    goto :goto_20

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const-string/jumbo v1, "settings"

    goto :goto_1e

    :cond_1c
    const-string v1, "defaultSettings"

    :goto_1e
    move-object v0, v1

    const/4 v1, 0x0

    :goto_20
    sget-object v2, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->XMLCTOR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .registers 5

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->setInstanceIdValue(ILjava/lang/Object;)V

    return-void

    :cond_19
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setPrettyPrinting(Z)V

    return-void

    :cond_23
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setPrettyIndent(I)V

    return-void

    :cond_2d
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreWhitespace(Z)V

    return-void

    :cond_37
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreProcessingInstructions(Z)V

    return-void

    :cond_41
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreComments(Z)V

    return-void
.end method
