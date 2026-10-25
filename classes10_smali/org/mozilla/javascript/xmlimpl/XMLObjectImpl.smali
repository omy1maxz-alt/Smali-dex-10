.class abstract Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;
.super Lorg/mozilla/javascript/xml/XMLObject;
.source "XMLObjectImpl.java"


# static fields
.field private static final Id_addNamespace:I = 0x2

.field private static final Id_appendChild:I = 0x3

.field private static final Id_attribute:I = 0x4

.field private static final Id_attributes:I = 0x5

.field private static final Id_child:I = 0x6

.field private static final Id_childIndex:I = 0x7

.field private static final Id_children:I = 0x8

.field private static final Id_comments:I = 0x9

.field private static final Id_constructor:I = 0x1

.field private static final Id_contains:I = 0xa

.field private static final Id_copy:I = 0xb

.field private static final Id_descendants:I = 0xc

.field private static final Id_elements:I = 0xd

.field private static final Id_hasComplexContent:I = 0x12

.field private static final Id_hasOwnProperty:I = 0x11

.field private static final Id_hasSimpleContent:I = 0x13

.field private static final Id_inScopeNamespaces:I = 0xe

.field private static final Id_insertChildAfter:I = 0xf

.field private static final Id_insertChildBefore:I = 0x10

.field private static final Id_length:I = 0x14

.field private static final Id_localName:I = 0x15

.field private static final Id_name:I = 0x16

.field private static final Id_namespace:I = 0x17

.field private static final Id_namespaceDeclarations:I = 0x18

.field private static final Id_nodeKind:I = 0x19

.field private static final Id_normalize:I = 0x1a

.field private static final Id_parent:I = 0x1b

.field private static final Id_prependChild:I = 0x1c

.field private static final Id_processingInstructions:I = 0x1d

.field private static final Id_propertyIsEnumerable:I = 0x1e

.field private static final Id_removeNamespace:I = 0x1f

.field private static final Id_replace:I = 0x20

.field private static final Id_setChildren:I = 0x21

.field private static final Id_setLocalName:I = 0x22

.field private static final Id_setName:I = 0x23

.field private static final Id_setNamespace:I = 0x24

.field private static final Id_text:I = 0x25

.field private static final Id_toSource:I = 0x27

.field private static final Id_toString:I = 0x26

.field private static final Id_toXMLString:I = 0x28

.field private static final Id_valueOf:I = 0x29

.field private static final MAX_PROTOTYPE_ID:I = 0x29

.field private static final XMLOBJECT_TAG:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x2370829e71672c01L


# instance fields
.field private lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

.field private prototypeFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "XMLObject"

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->XMLOBJECT_TAG:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/xml/XMLObject;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->initialize(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V

    return-void
.end method

.method private static arg([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    array-length v0, p0

    if-ge p1, v0, :cond_6

    aget-object p0, p0, p1

    goto :goto_8

    :cond_6
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_8
    return-object p0
.end method

.method private getMatches(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    return-object v0
.end method

.method private toObjectArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_d

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    return-object v1
.end method

.method private xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method abstract addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XMLName;)V
.end method

.method public final addValues(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    instance-of v0, p3, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_15

    if-eqz p2, :cond_b

    check-cast p3, Lorg/mozilla/javascript/xml/XMLObject;

    move-object p2, p3

    move-object p3, p0

    goto :goto_e

    :cond_b
    check-cast p3, Lorg/mozilla/javascript/xml/XMLObject;

    move-object p2, p0

    :goto_e
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p3, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->addXMLObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/xml/XMLObject;Lorg/mozilla/javascript/xml/XMLObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p3, v0, :cond_1e

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/xml/XMLObject;->addValues(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method abstract child(I)Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method abstract child(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method abstract children()Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method abstract comments()Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method abstract contains(Ljava/lang/Object;)Z
.end method

.method abstract copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;
.end method

.method final createEmptyXML()Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createEmpty(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    return-object v0
.end method

.method final createNamespace(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->createNamespaces([Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    aget-object p1, p1, v2

    return-object p1
.end method

.method final createNamespaces([Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)[Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->createNamespaces([Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    return-void
.end method

.method public final delete(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_18

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    return v0

    :cond_18
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    return v0
.end method

.method abstract deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V
.end method

.method final ecmaEscapeAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->escapeAttributeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final ecmaToXml(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->ecmaToXml(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1
.end method

.method abstract elements(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method public enterDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-direct {v0, v1, p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;->initAsDotQuery()V

    return-object v0
.end method

.method public enterWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-direct {v0, v1, p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V

    return-object v0
.end method

.method protected final equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->equivalentXml(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b
    return-object p1
.end method

.method abstract equivalentXml(Ljava/lang/Object;)Z
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->XMLOBJECT_TAG:Ljava/lang/Object;

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

    if-ne v0, v1, :cond_1e

    if-nez p4, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {p0, p2, v1, p5}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1e
    instance-of v3, p4, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-eqz v3, :cond_2bf

    check-cast p4, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getXML()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_2c4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_36  #0x29
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->valueOf()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3b  #0x28
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toXMLString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_40  #0x27
    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result p1

    invoke-virtual {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toSource(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_49  #0x26
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4e  #0x25
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->text()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :pswitch_53  #0x24
    if-nez p1, :cond_5b

    const-string/jumbo p3, "setNamespace"

    invoke-direct {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5b
    iget-object p3, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->castToNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->setNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_6b  #0x23
    if-nez p1, :cond_73

    const-string/jumbo p3, "setName"

    invoke-direct {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_73
    array-length p3, p5

    if-eqz p3, :cond_79

    aget-object p3, p5, v2

    goto :goto_7b

    :cond_79
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_7b
    iget-object p4, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p4, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->constructQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->setName(Lorg/mozilla/javascript/xmlimpl/QName;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_87  #0x22
    if-nez p1, :cond_8f

    const-string/jumbo p2, "setLocalName"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8f
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz p3, :cond_9e

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object p2

    goto :goto_a2

    :cond_9e
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_a2
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->setLocalName(Ljava/lang/String;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_a8  #0x21
    if-nez p1, :cond_af

    const-string p2, "setChildren"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_af
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->setChildren(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :pswitch_b8  #0x20
    if-nez p1, :cond_bf

    const-string p3, "replace"

    invoke-direct {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_bf
    iget-object p3, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p3

    invoke-static {p5, v1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_d9

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p1, p3, p4}, Lorg/mozilla/javascript/xmlimpl/XML;->replace(ILjava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_d9
    invoke-virtual {p1, p3, p4}, Lorg/mozilla/javascript/xmlimpl/XML;->replace(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :pswitch_de  #0x1f
    if-nez p1, :cond_e5

    const-string p3, "removeNamespace"

    invoke-direct {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e5
    iget-object p3, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->castToNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->removeNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :pswitch_f4  #0x1e
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->propertyIsEnumerable(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_101  #0x1d
    array-length p1, p5

    if-lez p1, :cond_10d

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    aget-object p3, p5, v2

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    goto :goto_111

    :cond_10d
    invoke-static {}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formStar()Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    :goto_111
    invoke-virtual {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->processingInstructions(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :pswitch_116  #0x1c
    if-nez p1, :cond_11d

    const-string p2, "prependChild"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11d
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->prependChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :pswitch_126  #0x1b
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->parent()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_12b  #0x1a
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->normalize()V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_131  #0x19
    if-nez p1, :cond_138

    const-string p2, "nodeKind"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_138
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->nodeKind()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_13d  #0x18
    if-nez p1, :cond_144

    const-string p5, "namespaceDeclarations"

    invoke-direct {p0, p4, p5}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_144
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->namespaceDeclarations()[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toObjectArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_151  #0x17
    if-nez p1, :cond_158

    const-string p2, "namespace"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_158
    array-length p2, p5

    if-lez p2, :cond_161

    aget-object p2, p5, v2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_161
    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/xmlimpl/XML;->namespace(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    if-nez p1, :cond_169

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_169
    return-object p1

    :pswitch_16a  #0x16
    if-nez p1, :cond_171

    const-string p2, "name"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_171
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->name()Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1

    :pswitch_176  #0x15
    if-nez p1, :cond_17d

    const-string p2, "localName"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_17d
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->localName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_182  #0x14
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->length()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_18b  #0x13
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasSimpleContent()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_194  #0x12
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasComplexContent()Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_19d  #0x11
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasOwnProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1b0  #0x10
    if-nez p1, :cond_1b7

    const-string p2, "insertChildBefore"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1b7
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1c5

    instance-of p3, p2, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz p3, :cond_1c2

    goto :goto_1c5

    :cond_1c2
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_1c5
    :goto_1c5
    check-cast p2, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-static {p5, v1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XML;->insertChildBefore(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :pswitch_1d0  #0xf
    if-nez p1, :cond_1d7

    const-string p2, "insertChildAfter"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1d7
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1e5

    instance-of p3, p2, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz p3, :cond_1e2

    goto :goto_1e5

    :cond_1e2
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_1e5
    :goto_1e5
    check-cast p2, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-static {p5, v1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XML;->insertChildAfter(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :pswitch_1f0  #0xe
    if-nez p1, :cond_1f7

    const-string p5, "inScopeNamespaces"

    invoke-direct {p0, p4, p5}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1f7
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->inScopeNamespaces()[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toObjectArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_204  #0xd
    array-length p1, p5

    if-nez p1, :cond_20c

    invoke-static {}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formStar()Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    goto :goto_214

    :cond_20c
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    aget-object p3, p5, v2

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    :goto_214
    invoke-virtual {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->elements(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :pswitch_219  #0xc
    array-length p1, p5

    if-nez p1, :cond_221

    invoke-static {v3, v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    goto :goto_229

    :cond_221
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    aget-object p3, p5, v2

    invoke-virtual {p1, p2, p3, v2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Z)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    :goto_229
    invoke-static {p1, v2, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-direct {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getMatches(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :pswitch_232  #0xb
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    move-result-object p1

    return-object p1

    :pswitch_237  #0xa
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_244  #0x9
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->comments()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :pswitch_249  #0x8
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->children()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :pswitch_24e  #0x7
    if-nez p1, :cond_255

    const-string p2, "childIndex"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_255
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->childIndex()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_25e  #0x6
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    if-nez p1, :cond_274

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->child(I)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :cond_274
    invoke-virtual {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->child(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :pswitch_279  #0x5
    invoke-static {v3, v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-direct {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getMatches(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :pswitch_286  #0x4
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Z)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-direct {p4, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getMatches(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :pswitch_299  #0x3
    if-nez p1, :cond_2a0

    const-string p2, "appendChild"

    invoke-direct {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2a0
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->appendChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :pswitch_2a9  #0x2
    if-nez p1, :cond_2b0

    const-string p3, "addNamespace"

    invoke-direct {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlMethodNotFound(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2b0
    iget-object p3, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->arg([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->castToNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->addNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_2bf
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_data_2c4
    .packed-switch 0x2
        :pswitch_2a9  #00000002
        :pswitch_299  #00000003
        :pswitch_286  #00000004
        :pswitch_279  #00000005
        :pswitch_25e  #00000006
        :pswitch_24e  #00000007
        :pswitch_249  #00000008
        :pswitch_244  #00000009
        :pswitch_237  #0000000a
        :pswitch_232  #0000000b
        :pswitch_219  #0000000c
        :pswitch_204  #0000000d
        :pswitch_1f0  #0000000e
        :pswitch_1d0  #0000000f
        :pswitch_1b0  #00000010
        :pswitch_19d  #00000011
        :pswitch_194  #00000012
        :pswitch_18b  #00000013
        :pswitch_182  #00000014
        :pswitch_176  #00000015
        :pswitch_16a  #00000016
        :pswitch_151  #00000017
        :pswitch_13d  #00000018
        :pswitch_131  #00000019
        :pswitch_12b  #0000001a
        :pswitch_126  #0000001b
        :pswitch_116  #0000001c
        :pswitch_101  #0000001d
        :pswitch_f4  #0000001e
        :pswitch_de  #0000001f
        :pswitch_b8  #00000020
        :pswitch_a8  #00000021
        :pswitch_87  #00000022
        :pswitch_6b  #00000023
        :pswitch_53  #00000024
        :pswitch_4e  #00000025
        :pswitch_49  #00000026
        :pswitch_40  #00000027
        :pswitch_3b  #00000028
        :pswitch_36  #00000029
    .end packed-switch
.end method

.method final exportAsJSClass(Z)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->prototypeFlag:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1, v0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 18

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x70

    const/16 v4, 0x6e

    const/16 v5, 0x6d

    const/16 v6, 0x64

    const/16 v7, 0x69

    const/16 v8, 0x72

    const/4 v9, 0x3

    const/16 v10, 0x73

    const/16 v11, 0x61

    const/16 v12, 0x74

    const/16 v13, 0x65

    const/4 v14, 0x2

    const/16 v15, 0x63

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1b0

    :pswitch_22  #0xd, 0x12, 0x13
    goto/16 :goto_1a1

    :pswitch_24  #0x16
    const/16 v1, 0x1d

    const-string v3, "processingInstructions"

    goto/16 :goto_1a3

    :pswitch_2a  #0x15
    const/16 v1, 0x18

    const-string v3, "namespaceDeclarations"

    goto/16 :goto_1a3

    :pswitch_30  #0x14
    const/16 v1, 0x1e

    const-string v3, "propertyIsEnumerable"

    goto/16 :goto_1a3

    :pswitch_36  #0x11
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x43

    if-ne v1, v3, :cond_44

    const/16 v1, 0x12

    const-string v3, "hasComplexContent"

    goto/16 :goto_1a3

    :cond_44
    if-ne v1, v15, :cond_4c

    const/16 v1, 0xe

    const-string v3, "inScopeNamespaces"

    goto/16 :goto_1a3

    :cond_4c
    if-ne v1, v13, :cond_1a1

    const/16 v1, 0x10

    const-string v3, "insertChildBefore"

    goto/16 :goto_1a3

    :pswitch_54  #0x10
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x68

    if-ne v1, v3, :cond_62

    const/16 v1, 0x13

    const-string v3, "hasSimpleContent"

    goto/16 :goto_1a3

    :cond_62
    if-ne v1, v7, :cond_1a1

    const/16 v1, 0xf

    const-string v3, "insertChildAfter"

    goto/16 :goto_1a3

    :pswitch_6a  #0xf
    const/16 v1, 0x1f

    const-string v3, "removeNamespace"

    goto/16 :goto_1a3

    :pswitch_70  #0xe
    const/16 v1, 0x11

    const-string v3, "hasOwnProperty"

    goto/16 :goto_1a3

    :pswitch_76  #0xc
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_81

    const-string v3, "addNamespace"

    const/4 v1, 0x2

    goto/16 :goto_1a3

    :cond_81
    if-ne v1, v3, :cond_89

    const/16 v1, 0x1c

    const-string v3, "prependChild"

    goto/16 :goto_1a3

    :cond_89
    if-ne v1, v10, :cond_1a1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_9a

    const/16 v1, 0x22

    const-string/jumbo v3, "setLocalName"

    goto/16 :goto_1a3

    :cond_9a
    const/16 v3, 0x4e

    if-ne v1, v3, :cond_1a1

    const/16 v1, 0x24

    const-string/jumbo v3, "setNamespace"

    goto/16 :goto_1a3

    :pswitch_a5  #0xb
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_cd

    if-eq v1, v15, :cond_c8

    if-eq v1, v6, :cond_c2

    if-eq v1, v10, :cond_bc

    if-eq v1, v12, :cond_b5

    goto/16 :goto_1a1

    :cond_b5
    const/16 v1, 0x28

    const-string/jumbo v3, "toXMLString"

    goto/16 :goto_1a3

    :cond_bc
    const/16 v1, 0x21

    const-string v3, "setChildren"

    goto/16 :goto_1a3

    :cond_c2
    const/16 v1, 0xc

    const-string v3, "descendants"

    goto/16 :goto_1a3

    :cond_c8
    const/4 v1, 0x1

    const-string v3, "constructor"

    goto/16 :goto_1a3

    :cond_cd
    const-string v3, "appendChild"

    const/4 v1, 0x3

    goto/16 :goto_1a3

    :pswitch_d2  #0xa
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_dd

    const/4 v1, 0x5

    const-string v3, "attributes"

    goto/16 :goto_1a3

    :cond_dd
    if-ne v1, v15, :cond_1a1

    const-string v3, "childIndex"

    const/4 v1, 0x7

    goto/16 :goto_1a3

    :pswitch_e4  #0x9
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v15, :cond_103

    if-eq v1, v5, :cond_fd

    if-eq v1, v8, :cond_f7

    if-eq v1, v12, :cond_f2

    goto/16 :goto_1a1

    :cond_f2
    const/4 v1, 0x4

    const-string v3, "attribute"

    goto/16 :goto_1a3

    :cond_f7
    const/16 v1, 0x1a

    const-string v3, "normalize"

    goto/16 :goto_1a3

    :cond_fd
    const/16 v1, 0x17

    const-string v3, "namespace"

    goto/16 :goto_1a3

    :cond_103
    const/16 v1, 0x15

    const-string v3, "localName"

    goto/16 :goto_1a3

    :pswitch_109  #0x8
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x53

    if-eq v1, v3, :cond_13b

    if-eq v1, v7, :cond_135

    if-eq v1, v6, :cond_12f

    if-eq v1, v13, :cond_129

    if-eq v1, v5, :cond_123

    if-eq v1, v4, :cond_11d

    goto/16 :goto_1a1

    :cond_11d
    const/16 v1, 0xa

    const-string v3, "contains"

    goto/16 :goto_1a3

    :cond_123
    const/16 v1, 0x9

    const-string v3, "comments"

    goto/16 :goto_1a3

    :cond_129
    const/16 v1, 0xd

    const-string v3, "elements"

    goto/16 :goto_1a3

    :cond_12f
    const/16 v1, 0x19

    const-string v3, "nodeKind"

    goto/16 :goto_1a3

    :cond_135
    const/16 v1, 0x8

    const-string v3, "children"

    goto/16 :goto_1a3

    :cond_13b
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_148

    const/16 v1, 0x27

    const-string/jumbo v3, "toSource"

    goto :goto_1a3

    :cond_148
    const/16 v3, 0x67

    if-ne v1, v3, :cond_1a1

    const/16 v1, 0x26

    const-string/jumbo v3, "toString"

    goto :goto_1a3

    :pswitch_152  #0x7
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_15d

    const/16 v1, 0x20

    const-string v3, "replace"

    goto :goto_1a3

    :cond_15d
    if-ne v1, v10, :cond_165

    const/16 v1, 0x23

    const-string/jumbo v3, "setName"

    goto :goto_1a3

    :cond_165
    const/16 v3, 0x76

    if-ne v1, v3, :cond_1a1

    const/16 v1, 0x29

    const-string/jumbo v3, "valueOf"

    goto :goto_1a3

    :pswitch_16f  #0x6
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x6c

    if-ne v1, v4, :cond_17c

    const/16 v1, 0x14

    const-string v3, "length"

    goto :goto_1a3

    :cond_17c
    if-ne v1, v3, :cond_1a1

    const/16 v1, 0x1b

    const-string v3, "parent"

    goto :goto_1a3

    :pswitch_183  #0x5
    const/4 v1, 0x6

    const-string v3, "child"

    goto :goto_1a3

    :pswitch_187  #0x4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_192

    const/16 v1, 0xb

    const-string v3, "copy"

    goto :goto_1a3

    :cond_192
    if-ne v1, v4, :cond_199

    const/16 v1, 0x16

    const-string v3, "name"

    goto :goto_1a3

    :cond_199
    if-ne v1, v12, :cond_1a1

    const/16 v1, 0x25

    const-string/jumbo v3, "text"

    goto :goto_1a3

    :cond_1a1
    :goto_1a1
    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1a3
    if-eqz v3, :cond_1ae

    if-eq v3, v0, :cond_1ae

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae

    goto :goto_1af

    :cond_1ae
    move v2, v1

    :goto_1af
    return v2

    :pswitch_data_1b0
    .packed-switch 0x4
        :pswitch_187  #00000004
        :pswitch_183  #00000005
        :pswitch_16f  #00000006
        :pswitch_152  #00000007
        :pswitch_109  #00000008
        :pswitch_e4  #00000009
        :pswitch_d2  #0000000a
        :pswitch_a5  #0000000b
        :pswitch_76  #0000000c
        :pswitch_22  #0000000d
        :pswitch_70  #0000000e
        :pswitch_6a  #0000000f
        :pswitch_54  #00000010
        :pswitch_36  #00000011
        :pswitch_22  #00000012
        :pswitch_22  #00000013
        :pswitch_30  #00000014
        :pswitch_2a  #00000015
        :pswitch_24  #00000016
    .end packed-switch
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    if-nez p2, :cond_1e

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p0, p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p1, p2, :cond_1d

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_1d
    return-object p1

    :cond_1e
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFunctionProperty(Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v1, :cond_1a

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xml/XMLObject;->getFunctionProperty(Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method public getFunctionProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p2, p0}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v1, :cond_1a

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xml/XMLObject;->getFunctionProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method getLib()Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    return-object v0
.end method

.method public final getParentScope()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method final getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object v0

    return-object v0
.end method

.method public final getPrototype()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method abstract getXML()Lorg/mozilla/javascript/xmlimpl/XML;
.end method

.method abstract getXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Ljava/lang/Object;
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z

    move-result p1

    return p1
.end method

.method public final has(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    if-nez p2, :cond_18

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p0, p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_18
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z

    move-result p1

    return p1
.end method

.method abstract hasComplexContent()Z
.end method

.method public final hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 2

    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method abstract hasOwnProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z
.end method

.method abstract hasSimpleContent()Z
.end method

.method abstract hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z
.end method

.method protected initPrototypeId(I)V
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_c0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10  #0x29
    const-string/jumbo v0, "valueOf"

    goto/16 :goto_95

    :pswitch_15  #0x28
    const-string/jumbo v0, "toXMLString"

    goto/16 :goto_9f

    :pswitch_1a  #0x27
    const-string/jumbo v0, "toSource"

    goto/16 :goto_9f

    :pswitch_1f  #0x26
    const-string/jumbo v0, "toString"

    goto/16 :goto_95

    :pswitch_24  #0x25
    const-string/jumbo v0, "text"

    goto/16 :goto_95

    :pswitch_29  #0x24
    const-string/jumbo v0, "setNamespace"

    goto/16 :goto_9f

    :pswitch_2e  #0x23
    const-string/jumbo v0, "setName"

    goto/16 :goto_9f

    :pswitch_33  #0x22
    const-string/jumbo v0, "setLocalName"

    goto/16 :goto_9f

    :pswitch_38  #0x21
    const-string v0, "setChildren"

    goto/16 :goto_9f

    :pswitch_3c  #0x20
    const-string v1, "replace"

    goto :goto_75

    :pswitch_3f  #0x1f
    const-string v0, "removeNamespace"

    goto/16 :goto_9f

    :pswitch_43  #0x1e
    const-string v0, "propertyIsEnumerable"

    goto/16 :goto_9f

    :pswitch_47  #0x1d
    const-string v0, "processingInstructions"

    goto/16 :goto_9f

    :pswitch_4b  #0x1c
    const-string v0, "prependChild"

    goto/16 :goto_9f

    :pswitch_4f  #0x1b
    const-string v0, "parent"

    goto :goto_95

    :pswitch_52  #0x1a
    const-string v0, "normalize"

    goto :goto_95

    :pswitch_55  #0x19
    const-string v0, "nodeKind"

    goto :goto_95

    :pswitch_58  #0x18
    const-string v0, "namespaceDeclarations"

    goto :goto_95

    :pswitch_5b  #0x17
    const-string v0, "namespace"

    goto :goto_9f

    :pswitch_5e  #0x16
    const-string v0, "name"

    goto :goto_95

    :pswitch_61  #0x15
    const-string v0, "localName"

    goto :goto_95

    :pswitch_64  #0x14
    const-string v0, "length"

    goto :goto_95

    :pswitch_67  #0x13
    const-string v0, "hasSimpleContent"

    goto :goto_95

    :pswitch_6a  #0x12
    const-string v0, "hasComplexContent"

    goto :goto_95

    :pswitch_6d  #0x11
    const-string v0, "hasOwnProperty"

    goto :goto_9f

    :pswitch_70  #0x10
    const-string v1, "insertChildBefore"

    goto :goto_75

    :pswitch_73  #0xf
    const-string v1, "insertChildAfter"

    :goto_75
    move-object v0, v1

    const/4 v2, 0x2

    goto :goto_9f

    :pswitch_78  #0xe
    const-string v0, "inScopeNamespaces"

    goto :goto_95

    :pswitch_7b  #0xd
    const-string v0, "elements"

    goto :goto_9f

    :pswitch_7e  #0xc
    const-string v0, "descendants"

    goto :goto_9f

    :pswitch_81  #0xb
    const-string v0, "copy"

    goto :goto_95

    :pswitch_84  #0xa
    const-string v0, "contains"

    goto :goto_9f

    :pswitch_87  #0x9
    const-string v0, "comments"

    goto :goto_95

    :pswitch_8a  #0x8
    const-string v0, "children"

    goto :goto_95

    :pswitch_8d  #0x7
    const-string v0, "childIndex"

    goto :goto_95

    :pswitch_90  #0x6
    const-string v0, "child"

    goto :goto_9f

    :pswitch_93  #0x5
    const-string v0, "attributes"

    :goto_95
    const/4 v2, 0x0

    goto :goto_9f

    :pswitch_97  #0x4
    const-string v0, "attribute"

    goto :goto_9f

    :pswitch_9a  #0x3
    const-string v0, "appendChild"

    goto :goto_9f

    :pswitch_9d  #0x2
    const-string v0, "addNamespace"

    :goto_9f
    sget-object v1, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->XMLOBJECT_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_a5  #0x1
    instance-of v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v0, :cond_b4

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;

    move-object v1, p0

    check-cast v1, Lorg/mozilla/javascript/xmlimpl/XML;

    sget-object v3, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->XMLOBJECT_TAG:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, p1, v2}, Lorg/mozilla/javascript/xmlimpl/XMLCtor;-><init>(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;II)V

    goto :goto_bb

    :cond_b4
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v1, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->XMLOBJECT_TAG:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;II)V

    :goto_bb
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeConstructor(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_a5  #00000001
        :pswitch_9d  #00000002
        :pswitch_9a  #00000003
        :pswitch_97  #00000004
        :pswitch_93  #00000005
        :pswitch_90  #00000006
        :pswitch_8d  #00000007
        :pswitch_8a  #00000008
        :pswitch_87  #00000009
        :pswitch_84  #0000000a
        :pswitch_81  #0000000b
        :pswitch_7e  #0000000c
        :pswitch_7b  #0000000d
        :pswitch_78  #0000000e
        :pswitch_73  #0000000f
        :pswitch_70  #00000010
        :pswitch_6d  #00000011
        :pswitch_6a  #00000012
        :pswitch_67  #00000013
        :pswitch_64  #00000014
        :pswitch_61  #00000015
        :pswitch_5e  #00000016
        :pswitch_5b  #00000017
        :pswitch_58  #00000018
        :pswitch_55  #00000019
        :pswitch_52  #0000001a
        :pswitch_4f  #0000001b
        :pswitch_4b  #0000001c
        :pswitch_47  #0000001d
        :pswitch_43  #0000001e
        :pswitch_3f  #0000001f
        :pswitch_3c  #00000020
        :pswitch_38  #00000021
        :pswitch_33  #00000022
        :pswitch_2e  #00000023
        :pswitch_29  #00000024
        :pswitch_24  #00000025
        :pswitch_1f  #00000026
        :pswitch_1a  #00000027
        :pswitch_15  #00000028
        :pswitch_10  #00000029
    .end packed-switch
.end method

.method final initialize(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    if-nez p3, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    iput-boolean p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->prototypeFlag:Z

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    return-void
.end method

.method final isPrototype()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->prototypeFlag:Z

    return v0
.end method

.method protected abstract jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract length()I
.end method

.method public memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;
    .registers 7

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-nez v0, :cond_19

    if-eqz v1, :cond_14

    goto :goto_19

    :cond_14
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_19
    :goto_19
    iget-object p3, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p3, p1, p2, v0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Z)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->initXMLObject(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;)V

    return-object p1
.end method

.method public memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;
    .registers 8

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iget-object p4, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p4, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->initXMLObject(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;)V

    return-object p1
.end method

.method final newQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method final newQName(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newQName(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method final newTextElementXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newTextElementXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1
.end method

.method final newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1
.end method

.method final newXMLFromJs(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLFromJs(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1
.end method

.method final newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    return-object v0
.end method

.method final newXMLListFrom(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLListFrom(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1
.end method

.method abstract normalize()V
.end method

.method abstract parent()Ljava/lang/Object;
.end method

.method abstract processingInstructions(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method abstract propertyIsEnumerable(Ljava/lang/Object;)Z
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    return-void
.end method

.method public final put(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    if-nez p2, :cond_17

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p0, p2, p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :cond_17
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    return-void
.end method

.method abstract putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V
.end method

.method public final setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .registers 2

    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public final setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .registers 2

    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method abstract text()Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method abstract toSource(I)Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method abstract toXMLString()Ljava/lang/String;
.end method

.method abstract valueOf()Ljava/lang/Object;
.end method

.method xmlFromNode(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getXml()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->setXml(Lorg/mozilla/javascript/xmlimpl/XML;)V

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getXml()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1
.end method
