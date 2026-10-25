.class public final Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;
.super Lorg/mozilla/javascript/xml/XMLLib;
.source "XMLLibImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private globalScope:Lorg/mozilla/javascript/Scriptable;

.field private namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

.field private options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

.field private qnamePrototype:Lorg/mozilla/javascript/xmlimpl/QName;

.field private xmlListPrototype:Lorg/mozilla/javascript/xmlimpl/XMLList;

.field private xmlPrototype:Lorg/mozilla/javascript/xmlimpl/XML;


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/xml/XMLLib;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->globalScope:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method private static badXMLName(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    const-string v0, "Can not construct XML name from number: "

    goto :goto_21

    :cond_7
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    const-string v0, "Can not construct XML name from boolean: "

    goto :goto_21

    :cond_e
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p0, v0, :cond_1f

    if-nez p0, :cond_15

    goto :goto_1f

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    const-string v0, "Can not construct XML name from "

    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method private exportToScope(Z)V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createText(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->xmlPrototype:Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->xmlListPrototype:Lorg/mozilla/javascript/xmlimpl/XMLList;

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->globalScope:Lorg/mozilla/javascript/Scriptable;

    sget-object v2, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->GLOBAL:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/xmlimpl/Namespace;->create(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xmlimpl/Namespace;Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->globalScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v1

    invoke-static {p0, v0, v3, v1}, Lorg/mozilla/javascript/xmlimpl/QName;->create(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xmlimpl/QName;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->qnamePrototype:Lorg/mozilla/javascript/xmlimpl/QName;

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->xmlPrototype:Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->exportAsJSClass(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->xmlListPrototype:Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->exportAsJSClass(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->exportAsJSClass(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->qnamePrototype:Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/QName;->exportAsJSClass(Z)V

    return-void
.end method

.method private getDefaultNamespaceURI(Lorg/mozilla/javascript/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->getDefaultNamespace(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 3

    new-instance p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xml/XMLLib;->bindToScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object p1

    if-ne p1, p0, :cond_e

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->exportToScope(Z)V

    :cond_e
    return-void
.end method

.method private parse(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->getDefaultNamespaceURI(Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createElement(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse XML: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public static toDomNode(Ljava/lang/Object;)Lorg/w3c/dom/Node;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->toDomNode()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "xmlObject is not an XML object in JavaScript."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private xmlPrimaryReference(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/xmlimpl/XMLName;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;
    .registers 6

    const/4 p1, 0x0

    :cond_1
    instance-of v0, p3, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;

    if-eqz v0, :cond_15

    invoke-interface {p3}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_1c

    :cond_12
    if-nez p1, :cond_15

    move-object p1, v0

    :cond_15
    invoke-interface {p3}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    if-nez p3, :cond_1

    move-object v0, p1

    :goto_1c
    if-eqz v0, :cond_21

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->initXMLObject(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;)V

    :cond_21
    return-object p2
.end method


# virtual methods
.method addXMLObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/xml/XMLObject;Lorg/mozilla/javascript/xml/XMLObject;)Ljava/lang/Object;
    .registers 8

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/XMLList;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    goto :goto_23

    :cond_1b
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLListFrom(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    goto :goto_23

    :cond_20
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :goto_23
    instance-of p2, p3, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz p2, :cond_39

    check-cast p3, Lorg/mozilla/javascript/xmlimpl/XMLList;

    :goto_29
    invoke-virtual {p3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p2

    if-ge v1, p2, :cond_40

    invoke-virtual {p3, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_39
    instance-of p2, p3, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz p2, :cond_40

    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :cond_40
    return-object p1
.end method

.method castToNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 3

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/Namespace;->castToNamespace(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method castToQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->qnamePrototype:Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {v0, p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/QName;->castToQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method constructQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->qnamePrototype:Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {v0, p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/QName;->constructQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method constructQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->qnamePrototype:Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/QName;->constructQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method createNamespaces([Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)[Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 7

    array-length v0, p1

    new-array v0, v0, [Lorg/mozilla/javascript/xmlimpl/Namespace;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/javascript/xmlimpl/Namespace;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1e
    return-object v0
.end method

.method final ecmaToXml(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    if-eqz p1, :cond_61

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p1, v0, :cond_61

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XML;

    return-object p1

    :cond_d
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz v0, :cond_25

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXML()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXML()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string p1, "Cannot convert list of >1 element to XML"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_25
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_2f

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_2f
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_3e

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-static {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createElementFromNode(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_3e
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_56

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_56

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->parse(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_56
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createText(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to XML"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public escapeAttributeValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->escapeAttributeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public escapeTextValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->escapeTextValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getDefaultNamespace(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 3

    if-nez p1, :cond_b

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    return-object p1

    :cond_b
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->searchDefaultNamespace(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    return-object p1

    :cond_14
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-eqz v0, :cond_1b

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/Namespace;

    return-object p1

    :cond_1b
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    return-object p1
.end method

.method public getPrettyIndent()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->getPrettyIndent()I

    move-result v0

    return v0
.end method

.method getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    return-object v0
.end method

.method globalScope()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->globalScope:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public isIgnoreComments()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->isIgnoreComments()Z

    move-result v0

    return v0
.end method

.method public isIgnoreProcessingInstructions()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->isIgnoreProcessingInstructions()Z

    move-result v0

    return v0
.end method

.method public isIgnoreWhitespace()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->isIgnoreWhitespace()Z

    move-result v0

    return v0
.end method

.method public isPrettyPrinting()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->isPrettyPrinting()Z

    move-result v0

    return v0
.end method

.method public isXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->accept(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public nameRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3, p3}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    and-int/lit8 p3, p5, 0x2

    if-eqz p3, :cond_16

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName()Z

    move-result p3

    if-nez p3, :cond_16

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->setAttributeName()V

    :cond_16
    invoke-direct {p0, p1, p2, p4}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->xmlPrimaryReference(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/xmlimpl/XMLName;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;

    move-result-object p1

    return-object p1
.end method

.method public nameRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;
    .registers 5

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_d

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toAttributeName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->xmlPrimaryReference(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/xmlimpl/XMLName;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method newNamespace(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->newNamespace(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method newQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->qnamePrototype:Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/QName;->newQName(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method newQName(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->globalScope:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->qnamePrototype:Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-static {p0, v0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/QName;->create(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xmlimpl/QName;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    return-object p1
.end method

.method final newTextElementXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-static {v0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->newElementWithText(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1
.end method

.method newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XML;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->globalScope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->xmlPrototype:Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/mozilla/javascript/xmlimpl/XML;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    return-object v0
.end method

.method final newXMLFromJs(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    if-eqz p1, :cond_17

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v0, :cond_7

    goto :goto_17

    :cond_7
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-eqz v0, :cond_12

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toXMLString()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_12
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_17
    :goto_17
    const-string p1, ""

    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createText(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_39
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->parse(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_3e
    const-string p1, "Invalid use of XML object anonymous tags <></>."

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLList;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->globalScope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->xmlListPrototype:Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V

    return-object v0
.end method

.method final newXMLListFrom(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    if-eqz p1, :cond_b6

    instance-of v1, p1, Lorg/mozilla/javascript/Undefined;

    if-eqz v1, :cond_c

    goto/16 :goto_b6

    :cond_c
    instance-of v1, p1, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v1, :cond_1a

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getNodeList()Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->add(Lorg/mozilla/javascript/xmlimpl/XML;)V

    return-object v0

    :cond_1a
    instance-of v1, p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz v1, :cond_2c

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getNodeList()Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getNodeList()Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->add(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;)V

    return-object v0

    :cond_2c
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "<>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "</>"

    if-nez v2, :cond_50

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<fragment>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</fragment>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLFromJs(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->children()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    :goto_90
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getNodeList()Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->length()I

    move-result v1

    if-ge v3, v1, :cond_ae

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getNodeList()Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    move-result-object v1

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XML;->copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->add(Lorg/mozilla/javascript/xmlimpl/XML;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    :cond_ae
    return-object v0

    :cond_af
    const-string p1, "XML with anonymous tag missing end anonymous tag"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_b6
    :goto_b6
    return-object v0
.end method

.method qnamePrototype()Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->qnamePrototype:Lorg/mozilla/javascript/xmlimpl/QName;

    return-object v0
.end method

.method public setIgnoreComments(Z)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreComments(Z)V

    return-void
.end method

.method public setIgnoreProcessingInstructions(Z)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreProcessingInstructions(Z)V

    return-void
.end method

.method public setIgnoreWhitespace(Z)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreWhitespace(Z)V

    return-void
.end method

.method public setPrettyIndent(I)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setPrettyIndent(I)V

    return-void
.end method

.method public setPrettyPrinting(Z)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->options:Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setPrettyPrinting(Z)V

    return-void
.end method

.method toAttributeName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 5

    instance-of p1, p2, Lorg/mozilla/javascript/xmlimpl/XMLName;

    if-eqz p1, :cond_7

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/XMLName;

    return-object p2

    :cond_7
    instance-of p1, p2, Lorg/mozilla/javascript/xmlimpl/QName;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_18

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/QName;->getDelegate()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    return-object p1

    :cond_18
    instance-of p1, p2, Ljava/lang/Boolean;

    if-nez p1, :cond_4b

    instance-of p1, p2, Ljava/lang/Number;

    if-nez p1, :cond_4b

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p2, p1, :cond_4b

    if-eqz p2, :cond_4b

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2d

    check-cast p2, Ljava/lang/String;

    goto :goto_31

    :cond_2d
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_31
    if-eqz p2, :cond_3c

    const-string p1, "*"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const/4 p2, 0x0

    :cond_3c
    const-string p1, ""

    invoke-static {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    return-object p1

    :cond_4b
    invoke-static {p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->badXMLName(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public toDefaultXmlNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/Namespace;->constructNamespace(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;
    .registers 7

    instance-of v0, p3, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz v0, :cond_b

    check-cast p3, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {p3}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object p3

    goto :goto_f

    :cond_b
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_f
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const-string v1, "*"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_26

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    goto :goto_28

    :cond_1d
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->getDefaultNamespace(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->getDelegate()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    goto :goto_3f

    :cond_26
    if-nez p2, :cond_2a

    :goto_28
    move-object p1, v2

    goto :goto_3f

    :cond_2a
    instance-of p1, p2, Lorg/mozilla/javascript/xmlimpl/Namespace;

    if-eqz p1, :cond_35

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/Namespace;->getDelegate()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    goto :goto_3f

    :cond_35
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->namespacePrototype:Lorg/mozilla/javascript/xmlimpl/Namespace;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/Namespace;->constructNamespace(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->getDelegate()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    :goto_3f
    if-eqz p3, :cond_48

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_48

    move-object p3, v2

    :cond_48
    invoke-static {p1, p3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    return-object p1
.end method

.method toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Z)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;
    .registers 5

    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/XMLName;

    if-eqz v0, :cond_b

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/XMLName;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz v0, :cond_16

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/QName;->getDelegate()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    return-object p1

    :cond_16
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_34

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_34

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p2, v0, :cond_34

    if-eqz p2, :cond_34

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2b

    check-cast p2, Ljava/lang/String;

    goto :goto_2f

    :cond_2b
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_2f
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/String;Z)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    return-object p1

    :cond_34
    invoke-static {p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->badXMLName(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/String;Z)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->getDefaultNamespace(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->getDelegate()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    if-eqz p2, :cond_18

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    return-object p1

    :cond_18
    if-eqz p3, :cond_21

    sget-object p1, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->GLOBAL:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    return-object p1

    :cond_21
    invoke-static {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    return-object p1
.end method

.method toXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 4

    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/XMLName;

    if-eqz v0, :cond_7

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/XMLName;

    goto :goto_3b

    :cond_7
    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz v0, :cond_1a

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/QName;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    goto :goto_3b

    :cond_1a
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_25

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    goto :goto_3b

    :cond_25
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_3c

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_3c

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p2, v0, :cond_3c

    if-eqz p2, :cond_3c

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    :goto_3b
    return-object p2

    :cond_3c
    invoke-static {p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->badXMLName(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->getDefaultNamespaceURI(Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    return-object p1
.end method

.method toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 13

    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/XMLName;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v1, p2

    check-cast v1, Lorg/mozilla/javascript/xmlimpl/XMLName;

    goto/16 :goto_94

    :cond_a
    instance-of v0, p2, Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_25

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->testUint32String(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1f

    invoke-static {p1, v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->storeUint32Result(Lorg/mozilla/javascript/Context;J)V

    goto/16 :goto_94

    :cond_1f
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object v1

    goto/16 :goto_94

    :cond_25
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_4c

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    double-to-long v6, v4

    long-to-double v8, v6

    cmpl-double v0, v8, v4

    if-nez v0, :cond_47

    cmp-long v0, v2, v6

    if-gtz v0, :cond_47

    const-wide v2, 0xffffffffL

    cmp-long v0, v6, v2

    if-gtz v0, :cond_47

    invoke-static {p1, v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->storeUint32Result(Lorg/mozilla/javascript/Context;J)V

    goto :goto_94

    :cond_47
    invoke-static {p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->badXMLName(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4c
    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz v0, :cond_76

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/QName;->uri()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6b

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->testUint32String(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-ltz v7, :cond_6b

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->storeUint32Result(Lorg/mozilla/javascript/Context;J)V

    const/4 v4, 0x1

    :cond_6b
    if-nez v4, :cond_94

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object v1

    goto :goto_94

    :cond_76
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_95

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p2, v0, :cond_95

    if-eqz p2, :cond_95

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->testUint32String(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_90

    invoke-static {p1, v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->storeUint32Result(Lorg/mozilla/javascript/Context;J)V

    goto :goto_94

    :cond_90
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object v1

    :cond_94
    :goto_94
    return-object v1

    :cond_95
    invoke-static {p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->badXMLName(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
