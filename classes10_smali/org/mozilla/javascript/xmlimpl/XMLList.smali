.class Lorg/mozilla/javascript/xmlimpl/XMLList;
.super Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;
.source "XMLList.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field static final serialVersionUID:J = -0x3f0e2d2e782404cfL


# instance fields
.field private _annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

.field private targetObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

.field private targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    new-instance p1, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    invoke-direct {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    return-void
.end method

.method private applyOrCall(ZLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    if-eqz p1, :cond_5

    const-string v0, "apply"

    goto :goto_7

    :cond_5
    const-string v0, "call"

    :goto_7
    instance-of v1, p4, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz v1, :cond_17

    move-object v1, p4

    check-cast v1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    iget-object v1, v1, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    if-eqz v1, :cond_17

    invoke-static {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/ScriptRuntime;->applyOrCall(ZLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    const-string p1, "msg.isnt.function"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isDescendants()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0, p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setTargets(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_2e

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2e
    return-object v0
.end method

.method private getXML(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;I)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    if-ltz p2, :cond_11

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    if-ge p2, v0, :cond_11

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->item(I)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->xmlFromNode(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXML(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1
.end method

.method private insert(ILorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    if-ge p1, v0, :cond_1f

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->add(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;II)V

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->add(Lorg/mozilla/javascript/xmlimpl/XML;)V

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    invoke-virtual {v0, p2, p1, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->add(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    :cond_1f
    return-void
.end method

.method private internalRemoveFromList(I)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->remove(I)V

    return-void
.end method

.method private replaceNode(Lorg/mozilla/javascript/xmlimpl/XML;Lorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 3

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->replaceWith(Lorg/mozilla/javascript/xmlimpl/XML;)V

    return-void
.end method

.method private setAttribute(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->setAttribute(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method


# virtual methods
.method addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XMLName;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method addToList(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->addToList(Ljava/lang/Object;)V

    return-void
.end method

.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    const-string v1, "call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_55

    :cond_19
    instance-of v1, p3, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v1, :cond_4e

    const/4 v1, 0x0

    :goto_1e
    move-object v2, v1

    :cond_1f
    move-object v1, p3

    :cond_20
    instance-of v3, p3, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v3, :cond_3e

    check-cast p3, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p3, p1, v0}, Lorg/mozilla/javascript/xml/XMLObject;->getFunctionProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_2f

    goto :goto_3e

    :cond_2f
    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/xml/XMLObject;->getExtraMethodSource(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    if-eqz p3, :cond_20

    instance-of v1, p3, Lorg/mozilla/javascript/xml/XMLObject;

    if-nez v1, :cond_1f

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1e

    :cond_3e
    :goto_3e
    instance-of p3, v2, Lorg/mozilla/javascript/Callable;

    if-eqz p3, :cond_49

    check-cast v2, Lorg/mozilla/javascript/Callable;

    invoke-interface {v2, p1, p2, v1, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_49
    invoke-static {v1, v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4e
    const-string p1, "msg.incompat.call"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_55
    :goto_55
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/xmlimpl/XMLList;->applyOrCall(ZLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5f
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_65

    :goto_64
    throw p1

    :goto_65
    goto :goto_64
.end method

.method child(I)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->child(I)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-object v0
.end method

.method child(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->child(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-object v0
.end method

.method children()Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XML;->children()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_28

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2b
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_33
    if-ge v1, v3, :cond_3f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_3f
    return-object v2
.end method

.method comments()Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XML;->comments()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-object v0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    const-string p1, "msg.not.ctor"

    const-string p2, "XMLList"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method contains(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->equivalentXml(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    :goto_17
    return v0
.end method

.method copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XML;->copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-object v0
.end method

.method public delete(I)V
    .registers 3

    if-ltz p1, :cond_12

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    if-ge p1, v0, :cond_12

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XML;->remove()V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->internalRemoveFromList(I)V

    :cond_12
    return-void
.end method

.method deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method elements(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->elements(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-object v0
.end method

.method equivalentXml(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Lorg/mozilla/javascript/Undefined;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_46

    :cond_d
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    if-ne v0, v1, :cond_1c

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->equivalentXml(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_46

    :cond_1c
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz v0, :cond_45

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v3

    if-ne v0, v3, :cond_45

    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v3

    if-ge v0, v3, :cond_46

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/xmlimpl/XML;->equivalentXml(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_45

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_45
    :goto_45
    const/4 v1, 0x0

    :cond_46
    :goto_46
    return v1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 3

    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p2

    if-ge p1, p2, :cond_d

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_d
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "XMLList"

    return-object v0
.end method

.method public getExtraMethodSource(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIds()[Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->isPrototype()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    new-array v0, v1, [Ljava/lang/Object;

    goto :goto_1c

    :cond_a
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    :goto_10
    if-ge v1, v0, :cond_1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1b
    move-object v0, v2

    :goto_1c
    return-object v0
.end method

.method public getIdsForDebug()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getNodeList()Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    return-object v0
.end method

.method getXML()Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method getXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p2

    if-ge p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method hasComplexContent()Z
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    :cond_8
    const/4 v1, 0x0

    goto :goto_26

    :cond_a
    if-ne v0, v1, :cond_15

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XML;->hasComplexContent()Z

    move-result v1

    goto :goto_26

    :cond_15
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v0, :cond_8

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_26

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :goto_26
    return v1
.end method

.method hasOwnProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->isPrototype()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->findPrototypeId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    :cond_15
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p1

    if-lez p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method

.method hasSimpleContent()Z
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_18

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XML;->hasSimpleContent()Z

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v3

    if-ge v0, v3, :cond_2d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v3

    if-eqz v3, :cond_2a

    return v2

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2d
    return v1
.end method

.method hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method item(I)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->createEmptyXML()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method protected jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    array-length p1, p3

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    aget-object p1, p3, p1

    if-nez p2, :cond_12

    instance-of p2, p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz p2, :cond_12

    return-object p1

    :cond_12
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLListFrom(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1
.end method

.method length()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->length()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method normalize()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XML;->normalize()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method parent()Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_31

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XML;->parent()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/mozilla/javascript/xmlimpl/XML;

    if-nez v3, :cond_20

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_20
    check-cast v2, Lorg/mozilla/javascript/xmlimpl/XML;

    if-nez v1, :cond_26

    move-object v0, v2

    goto :goto_2c

    :cond_26
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XML;->is(Lorg/mozilla/javascript/xmlimpl/XML;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2f
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_31
    return-object v0
.end method

.method processingInstructions(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->processingInstructions(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-object v0
.end method

.method propertyIsEnumerable(Ljava/lang/Object;)Z
    .registers 12

    instance-of v0, p1, Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v4, p1

    goto :goto_38

    :cond_f
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_30

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    double-to-long v6, v4

    long-to-double v8, v6

    cmpl-double p1, v8, v4

    if-eqz p1, :cond_20

    return v3

    :cond_20
    cmp-long p1, v6, v1

    if-nez p1, :cond_2e

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    div-double/2addr v8, v4

    const-wide/16 v4, 0x0

    cmpg-double p1, v8, v4

    if-gez p1, :cond_2e

    return v3

    :cond_2e
    move-wide v4, v6

    goto :goto_38

    :cond_30
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->testUint32String(Ljava/lang/String;)J

    move-result-wide v4

    :goto_38
    cmp-long p1, v1, v4

    if-gtz p1, :cond_46

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p1

    int-to-long v0, p1

    cmp-long p1, v4, v0

    if-gez p1, :cond_46

    const/4 v3, 0x1

    :cond_46
    return v3
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 9

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-nez p3, :cond_7

    const-string p3, "null"

    goto :goto_e

    :cond_7
    instance-of p2, p3, Lorg/mozilla/javascript/Undefined;

    if-eqz p2, :cond_e

    const-string/jumbo p3, "undefined"

    :cond_e
    :goto_e
    instance-of p2, p3, Lorg/mozilla/javascript/xml/XMLObject;

    const/4 v0, 0x0

    if-eqz p2, :cond_16

    check-cast p3, Lorg/mozilla/javascript/xml/XMLObject;

    goto :goto_42

    :cond_16
    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    if-nez p2, :cond_23

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLFromJs(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p3

    goto :goto_42

    :cond_23
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    if-nez p2, :cond_3b

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    if-nez p2, :cond_37

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newTextElementXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    goto :goto_3b

    :cond_37
    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    move-result-object p2

    :cond_3b
    :goto_3b
    move-object v1, p2

    check-cast v1, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {v1, p3}, Lorg/mozilla/javascript/xmlimpl/XML;->setChildren(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-object p3, p2

    :goto_42
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p2

    if-ge p1, p2, :cond_51

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->parent()Ljava/lang/Object;

    move-result-object p2

    goto :goto_69

    :cond_51
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p2

    if-nez p2, :cond_65

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-eqz p2, :cond_60

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getXML()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    goto :goto_69

    :cond_60
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->parent()Ljava/lang/Object;

    move-result-object p2

    goto :goto_69

    :cond_65
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->parent()Ljava/lang/Object;

    move-result-object p2

    :goto_69
    instance-of v1, p2, Lorg/mozilla/javascript/xmlimpl/XML;

    const/4 v2, 0x1

    if-eqz v1, :cond_d0

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-ge p1, v1, :cond_c5

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    instance-of v3, p3, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v3, :cond_88

    check-cast p3, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-direct {p0, v1, p3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replaceNode(Lorg/mozilla/javascript/xmlimpl/XML;Lorg/mozilla/javascript/xmlimpl/XML;)V

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replace(ILorg/mozilla/javascript/xmlimpl/XML;)V

    goto/16 :goto_118

    :cond_88
    instance-of v3, p3, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz v3, :cond_118

    check-cast p3, Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {p3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v3

    if-lez v3, :cond_118

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XML;->childIndex()I

    move-result v3

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replaceNode(Lorg/mozilla/javascript/xmlimpl/XML;Lorg/mozilla/javascript/xmlimpl/XML;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replace(ILorg/mozilla/javascript/xmlimpl/XML;)V

    const/4 v0, 0x1

    :goto_a7
    invoke-virtual {p3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-ge v0, v1, :cond_118

    invoke-virtual {p2, v3}, Lorg/mozilla/javascript/xmlimpl/XML;->getXmlChild(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lorg/mozilla/javascript/xmlimpl/XML;->insertChildAfter(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    add-int/2addr v3, v2

    add-int v1, p1, v0

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/xmlimpl/XMLList;->insert(ILorg/mozilla/javascript/xmlimpl/XML;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    :cond_c5
    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/xmlimpl/XML;->appendChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->getLastXmlChild()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    goto :goto_118

    :cond_d0
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p2

    if-ge p1, p2, :cond_115

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXML(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    instance-of v1, p3, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v1, :cond_e9

    check-cast p3, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-direct {p0, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replaceNode(Lorg/mozilla/javascript/xmlimpl/XML;Lorg/mozilla/javascript/xmlimpl/XML;)V

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replace(ILorg/mozilla/javascript/xmlimpl/XML;)V

    goto :goto_118

    :cond_e9
    instance-of v1, p3, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz v1, :cond_118

    check-cast p3, Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {p3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-lez v1, :cond_118

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replaceNode(Lorg/mozilla/javascript/xmlimpl/XML;Lorg/mozilla/javascript/xmlimpl/XML;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replace(ILorg/mozilla/javascript/xmlimpl/XML;)V

    :goto_103
    invoke-virtual {p3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p2

    if-ge v2, p2, :cond_118

    add-int p2, p1, v2

    invoke-virtual {p3, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->insert(ILorg/mozilla/javascript/xmlimpl/XML;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    :cond_115
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :cond_118
    :goto_118
    return-void
.end method

.method putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V
    .registers 6

    if-nez p2, :cond_5

    const-string p2, "null"

    goto :goto_c

    :cond_5
    instance-of v0, p2, Lorg/mozilla/javascript/Undefined;

    if-eqz v0, :cond_c

    const-string/jumbo p2, "undefined"

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_9d

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_84

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7d

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newTextElementXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setAttribute(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    goto :goto_56

    :cond_48
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replace(ILorg/mozilla/javascript/xmlimpl/XML;)V

    :goto_56
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    invoke-virtual {p2, p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getXML()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getLastXmlChild()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replace(ILorg/mozilla/javascript/xmlimpl/XML;)V

    goto :goto_9c

    :cond_7d
    const-string p1, "Assignment to empty XMLList without targets not supported"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_84
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setAttribute(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    goto :goto_9c

    :cond_8e
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replace(ILorg/mozilla/javascript/xmlimpl/XML;)V

    :goto_9c
    return-void

    :cond_9d
    const-string p1, "Assignment to lists with more than one item is not supported"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method remove()V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_17

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XML;->remove()V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->internalRemoveFromList(I)V

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method replace(ILorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    if-ge p1, v0, :cond_21

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->add(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;II)V

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->add(Lorg/mozilla/javascript/xmlimpl/XML;)V

    iget-object p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    invoke-virtual {v0, p2, p1, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->add(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->_annos:Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;

    :cond_21
    return-void
.end method

.method setTargets(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V
    .registers 3

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    iput-object p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLList;->targetProperty:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    return-void
.end method

.method text()Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XML;->text()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-object v0
.end method

.method toSource(I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->toXMLString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->hasSimpleContent()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XML;->isComment()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XML;->isProcessingInstruction()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_2a

    :cond_23
    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XML;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->toXMLString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toXMLString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->isPrettyPrinting()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1d

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXmlFromAnnotation(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XML;->toXMLString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueOf()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method
