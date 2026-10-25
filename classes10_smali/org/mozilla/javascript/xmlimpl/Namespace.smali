.class Lorg/mozilla/javascript/xmlimpl/Namespace;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "Namespace.java"


# static fields
.field private static final Id_constructor:I = 0x1

.field private static final Id_prefix:I = 0x1

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final Id_uri:I = 0x2

.field private static final MAX_INSTANCE_ID:I = 0x2

.field private static final MAX_PROTOTYPE_ID:I = 0x3

.field private static final NAMESPACE_TAG:Ljava/lang/Object;

.field static final serialVersionUID:J = -0x500413d73ea9fd70L


# instance fields
.field private ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

.field private prototype:Lorg/mozilla/javascript/xmlimpl/Namespace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Namespace"

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/Namespace;->NAMESPACE_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method private constructNamespace()Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/xmlimpl/Namespace;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object v0

    return-object v0
.end method

.method private constructNamespace(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 5

    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz v0, :cond_11

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/QName;->uri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/QName;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_11
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    const-string v1, ""

    if-nez p2, :cond_48

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_22

    goto :goto_58

    :cond_22
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_58

    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal prefix \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' for \'no namespace\'."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_48
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_4d

    goto :goto_58

    :cond_4d
    invoke-static {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->accept(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    goto :goto_58

    :cond_54
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_58
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/xmlimpl/Namespace;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method static create(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xmlimpl/Namespace;Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/Namespace;-><init>()V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    iput-object p1, v0, Lorg/mozilla/javascript/xmlimpl/Namespace;->prototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    iput-object p2, v0, Lorg/mozilla/javascript/xmlimpl/Namespace;->ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    return-object v0
.end method

.method private equals(Lorg/mozilla/javascript/xmlimpl/Namespace;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_e

    array-length p2, p3

    if-ne p2, v0, :cond_e

    aget-object p1, p3, p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->castToNamespace(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1

    :cond_e
    array-length p2, p3

    if-nez p2, :cond_16

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/Namespace;->constructNamespace()Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1

    :cond_16
    array-length p2, p3

    if-ne p2, v0, :cond_20

    aget-object p1, p3, p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->constructNamespace(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1

    :cond_20
    aget-object p1, p3, p1

    aget-object p2, p3, v0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/Namespace;->constructNamespace(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method private js_toSource()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/mozilla/javascript/xmlimpl/Namespace;->toSourceImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    return-object p1

    :cond_7
    invoke-static {p2}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method static toSourceImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 4

    const-string v0, "new Namespace("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_37

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2d

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\', \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_37
    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method castToNamespace(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->constructNamespace(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method constructNamespace(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 5

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-eqz v0, :cond_f

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->prefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object p1

    goto :goto_36

    :cond_f
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/QName;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/QName;->uri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/QName;->prefix()Ljava/lang/String;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_36

    :cond_24
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/QName;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_28
    move-object v0, v1

    goto :goto_36

    :cond_2a
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    const-string v0, ""

    :goto_36
    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->equals(Lorg/mozilla/javascript/xmlimpl/Namespace;)Z

    move-result p1

    return p1
.end method

.method protected equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-nez v0, :cond_7

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_7
    check-cast p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->equals(Lorg/mozilla/javascript/xmlimpl/Namespace;)Z

    move-result p1

    if-eqz p1, :cond_12

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_14

    :cond_12
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_14
    return-object p1
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lorg/mozilla/javascript/xmlimpl/Namespace;->NAMESPACE_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_36

    const/4 p2, 0x2

    if-eq p3, p2, :cond_2d

    const/4 p2, 0x3

    if-ne p3, p2, :cond_23

    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->js_toSource()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_36
    if-nez p4, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    invoke-direct {p0, p2, v0, p5}, Lorg/mozilla/javascript/xmlimpl/Namespace;->jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public exportAsJSClass(Z)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_f

    const-string/jumbo v0, "uri"

    const/4 v4, 0x2

    goto :goto_18

    :cond_f
    const/4 v4, 0x6

    if-ne v0, v4, :cond_16

    const-string v0, "prefix"

    const/4 v4, 0x1

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_18
    if-eqz v0, :cond_23

    if-eq v0, p1, :cond_23

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_24

    :cond_23
    move v3, v4

    :goto_24
    if-nez v3, :cond_2b

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2b
    if-eq v3, v1, :cond_36

    if-ne v3, v2, :cond_30

    goto :goto_36

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_36
    :goto_36
    const/4 p1, 0x5

    invoke-super {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getMaxInstanceId()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_16

    const-string/jumbo v0, "toSource"

    goto :goto_29

    :cond_16
    const/16 v1, 0x74

    if-ne v0, v1, :cond_27

    const/4 v1, 0x2

    const-string/jumbo v0, "toString"

    goto :goto_29

    :cond_1f
    const/16 v1, 0xb

    if-ne v0, v1, :cond_27

    const/4 v1, 0x1

    const-string v0, "constructor"

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_29
    if-eqz v0, :cond_34

    if-eq v0, p1, :cond_34

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    move v2, v1

    :goto_35
    return v2
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Namespace"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final getDelegate()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 4

    invoke-super {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    const-string/jumbo p1, "uri"

    return-object p1

    :cond_15
    const-string p1, "prefix"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 4

    invoke-super {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_23

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_23
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getMaxInstanceId()I
    .registers 2

    invoke-super {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getMaxInstanceId()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v0, :cond_1c

    if-eq p1, v2, :cond_18

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    const-string/jumbo v0, "toSource"

    goto :goto_1f

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const-string/jumbo v0, "toString"

    goto :goto_1f

    :cond_1c
    const-string v0, "constructor"

    const/4 v1, 0x2

    :goto_1f
    sget-object v2, Lorg/mozilla/javascript/xmlimpl/Namespace;->NAMESPACE_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method newNamespace(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->prototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-nez v0, :cond_5

    move-object v0, p0

    :cond_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->create(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xmlimpl/Namespace;Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 5

    if-nez p1, :cond_7

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/Namespace;->newNamespace(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->prototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-nez v0, :cond_c

    move-object v0, p0

    :cond_c
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->create(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xmlimpl/Namespace;Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method public prefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLocaleString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/Namespace;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/Namespace;->ns:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
