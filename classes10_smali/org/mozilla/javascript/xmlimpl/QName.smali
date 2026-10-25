.class final Lorg/mozilla/javascript/xmlimpl/QName;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "QName.java"


# static fields
.field private static final Id_constructor:I = 0x1

.field private static final Id_localName:I = 0x1

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final Id_uri:I = 0x2

.field private static final MAX_INSTANCE_ID:I = 0x2

.field private static final MAX_PROTOTYPE_ID:I = 0x3

.field private static final QNAME_TAG:Ljava/lang/Object;

.field static final serialVersionUID:J = 0x5c89385a23415beL


# instance fields
.field private delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

.field private lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

.field private prototype:Lorg/mozilla/javascript/xmlimpl/QName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "QName"

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/QName;->QNAME_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method static create(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xmlimpl/QName;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/QName;-><init>()V

    iput-object p0, v0, Lorg/mozilla/javascript/xmlimpl/QName;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    iput-object p2, v0, Lorg/mozilla/javascript/xmlimpl/QName;->prototype:Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    iput-object p3, v0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    return-object v0
.end method

.method private equals(Lorg/mozilla/javascript/xmlimpl/QName;)Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->equals(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Z

    move-result p1

    return p1
.end method

.method private jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_10

    array-length p2, p3

    if-ne p2, v1, :cond_10

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/QName;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    aget-object p3, p3, v0

    invoke-virtual {p0, p2, p1, p3}, Lorg/mozilla/javascript/xmlimpl/QName;->castToQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1

    :cond_10
    array-length p2, p3

    if-nez p2, :cond_1c

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/QName;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, p3}, Lorg/mozilla/javascript/xmlimpl/QName;->constructQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1

    :cond_1c
    array-length p2, p3

    if-ne p2, v1, :cond_28

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/QName;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    aget-object p3, p3, v0

    invoke-virtual {p0, p2, p1, p3}, Lorg/mozilla/javascript/xmlimpl/QName;->constructQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1

    :cond_28
    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/QName;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    aget-object v0, p3, v0

    aget-object p3, p3, v1

    invoke-virtual {p0, p2, p1, v0, p3}, Lorg/mozilla/javascript/xmlimpl/QName;->constructQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method private js_toSource()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->prefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lorg/mozilla/javascript/xmlimpl/QName;->toSourceImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/QName;

    return-object p1

    :cond_7
    invoke-static {p2}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private static toSourceImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 5

    const-string v0, "new QName("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_17

    if-nez p2, :cond_17

    const-string p0, "*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    const-string p0, "null, "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_17
    if-eqz p0, :cond_21

    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/xmlimpl/Namespace;->toSourceImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p0, ", "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    :goto_21
    const/16 p0, 0x27

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method castToQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 5

    instance-of v0, p3, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz v0, :cond_7

    check-cast p3, Lorg/mozilla/javascript/xmlimpl/QName;

    return-object p3

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/QName;->constructQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method constructQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 5

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/xmlimpl/QName;->constructQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method constructQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 7

    instance-of v0, p4, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz v0, :cond_11

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p3, v0, :cond_b

    check-cast p4, Lorg/mozilla/javascript/xmlimpl/QName;

    return-object p4

    :cond_b
    move-object v0, p4

    check-cast v0, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    :cond_11
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p4, v0, :cond_18

    const-string p4, ""

    goto :goto_1c

    :cond_18
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :goto_1c
    const/4 v1, 0x0

    if-ne p3, v0, :cond_2d

    const-string p3, "*"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    move-object p3, v1

    goto :goto_2d

    :cond_29
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->getDefaultNamespace(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p3

    :cond_2d
    :goto_2d
    if-nez p3, :cond_31

    move-object p2, v1

    goto :goto_41

    :cond_31
    instance-of p2, p3, Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-eqz p2, :cond_39

    move-object p2, p3

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/Namespace;

    goto :goto_41

    :cond_39
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newNamespace(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p2

    :goto_41
    if-nez p3, :cond_45

    move-object p2, v1

    goto :goto_4d

    :cond_45
    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/Namespace;->prefix()Ljava/lang/String;

    move-result-object p2

    :goto_4d
    invoke-virtual {p0, p1, v1, p4, p2}, Lorg/mozilla/javascript/xmlimpl/QName;->newQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/QName;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/QName;->equals(Lorg/mozilla/javascript/xmlimpl/QName;)Z

    move-result p1

    return p1
.end method

.method protected equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/QName;

    if-nez v0, :cond_7

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_7
    check-cast p1, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/QName;->equals(Lorg/mozilla/javascript/xmlimpl/QName;)Z

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

    sget-object v0, Lorg/mozilla/javascript/xmlimpl/QName;->QNAME_TAG:Ljava/lang/Object;

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

    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/xmlimpl/QName;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    invoke-direct {p1}, Lorg/mozilla/javascript/xmlimpl/QName;->js_toSource()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/xmlimpl/QName;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/QName;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_36
    if-nez p4, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    invoke-direct {p0, p2, v0, p5}, Lorg/mozilla/javascript/xmlimpl/QName;->jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method exportAsJSClass(Z)V
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

    goto :goto_19

    :cond_f
    const/16 v4, 0x9

    if-ne v0, v4, :cond_17

    const-string v0, "localName"

    const/4 v4, 0x1

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_19
    if-eqz v0, :cond_24

    if-eq v0, p1, :cond_24

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    move v3, v4

    :goto_25
    if-nez v3, :cond_2c

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2c
    if-eq v3, v1, :cond_37

    if-ne v3, v2, :cond_31

    goto :goto_37

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_37
    :goto_37
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

    const-string v0, "QName"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final getDelegate()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

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
    const-string p1, "localName"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 4

    invoke-super {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->uri()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

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

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->hashCode()I

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
    sget-object v2, Lorg/mozilla/javascript/xmlimpl/QName;->QNAME_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method public localName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "*"

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method newQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->prototype:Lorg/mozilla/javascript/xmlimpl/QName;

    if-nez v0, :cond_5

    move-object v0, p0

    :cond_5
    const/4 v1, 0x0

    if-eqz p4, :cond_d

    invoke-static {p4, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p2

    goto :goto_15

    :cond_d
    if-eqz p2, :cond_14

    invoke-static {p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p2

    goto :goto_15

    :cond_14
    move-object p2, v1

    :goto_15
    if-eqz p3, :cond_20

    const-string p4, "*"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_20

    move-object p3, v1

    :cond_20
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    invoke-static {p2, p3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p2

    invoke-static {p1, p4, v0, p2}, Lorg/mozilla/javascript/xmlimpl/QName;->create(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xmlimpl/QName;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method prefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final toNodeQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method uri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/QName;->delegate:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
