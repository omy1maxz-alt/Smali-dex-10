.class Lorg/mozilla/javascript/xmlimpl/XML;
.super Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;
.source "XML.java"


# static fields
.field static final serialVersionUID:J = -0x8c1a7cc631ad1c4L


# instance fields
.field private node:Lorg/mozilla/javascript/xmlimpl/XmlNode;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;Lorg/mozilla/javascript/xmlimpl/XmlNode;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V

    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/xmlimpl/XML;->initialize(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    return-void
.end method

.method private adapt(Lorg/mozilla/javascript/xmlimpl/Namespace;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .registers 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->prefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->prefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    return-object p1
.end method

.method private addInScopeNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->prefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->prefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->invalidateNamespacePrefix()V

    :cond_3f
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    return-void
.end method

.method private ecmaToString()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isAttribute()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isText()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5a

    :cond_d
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->hasSimpleContent()Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_50

    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChild(I)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isProcessingInstructionType()Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isCommentType()Z

    move-result v3

    if-nez v3, :cond_4d

    new-instance v3, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getLib()Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    move-result-object v4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-direct {v3, v4, v5, v6, v2}, Lorg/mozilla/javascript/xmlimpl/XML;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XML;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_55
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->toXMLString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5a
    :goto_5a
    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->ecmaValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ecmaValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->ecmaValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChildIndexOf(Lorg/mozilla/javascript/xmlimpl/XML;)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChild(I)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v1

    iget-object v2, p1, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isSameNode(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

.method private getNodesForInsert(Ljava/lang/Object;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .registers 5

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XML;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    new-array v0, v2, [Lorg/mozilla/javascript/xmlimpl/XmlNode;

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XML;

    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    aput-object p1, v0, v1

    return-object v0

    :cond_f
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz v0, :cond_2d

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    new-array v0, v0, [Lorg/mozilla/javascript/xmlimpl/XmlNode;

    :goto_1b
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-ge v1, v2, :cond_2c

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v2

    iget-object v2, v2, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2c
    return-object v0

    :cond_2d
    new-array v0, v2, [Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createText(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    aput-object p1, v0, v1

    return-object v0
.end method

.method private toXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;
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


# virtual methods
.method addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XMLName;)V
    .registers 3

    invoke-virtual {p2, p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    return-void
.end method

.method addNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->addInScopeNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)V

    return-object p0
.end method

.method appendChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isParentType()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getNodesForInsert(Ljava/lang/Object;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->insertChildrenAt(I[Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    :cond_15
    return-object p0
.end method

.method child(I)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setTargets(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    if-ltz p1, :cond_19

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_19

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getXmlChild(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :cond_19
    return-object v0
.end method

.method child(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    sget-object v2, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;->ELEMENT:Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getMatchingChildren(Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v1

    const/4 v2, 0x0

    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_28

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/xmlimpl/XMLName;->matchesElement(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Z

    move-result v3

    if-eqz v3, :cond_25

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/xmlimpl/XML;->toXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_28
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setTargets(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    return-object v0
.end method

.method childIndex()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChildIndex()I

    move-result v0

    return v0
.end method

.method children()Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formStar()Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setTargets(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    sget-object v2, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;->TRUE:Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getMatchingChildren(Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v1

    const/4 v2, 0x0

    :goto_18
    array-length v3, v1

    if-ge v2, v3, :cond_27

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/xmlimpl/XML;->toXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_27
    return-object v0
.end method

.method comments()Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    sget-object v2, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;->COMMENT:Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->addMatchingChildren(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;)V

    return-object v0
.end method

.method contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->equivalentXml(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->copy()Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 2

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->remove()V

    :cond_5
    return-void
.end method

.method deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V
    .registers 4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    iget-object v1, v1, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->deleteMe()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method final ecmaClass()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isTextType()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "text"

    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isAttributeType()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "attribute"

    return-object v0

    :cond_17
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isCommentType()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "comment"

    return-object v0

    :cond_22
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isProcessingInstructionType()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "processing-instruction"

    return-object v0

    :cond_2d
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isElementType()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "element"

    return-object v0

    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method elements(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setTargets(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    sget-object v2, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;->ELEMENT:Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getMatchingChildren(Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v1

    const/4 v2, 0x0

    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_2f

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/xmlimpl/XML;->toXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/xmlimpl/XMLName;->matches(Lorg/mozilla/javascript/xmlimpl/XML;)Z

    move-result v3

    if-eqz v3, :cond_2c

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/xmlimpl/XML;->toXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2f
    return-object v0
.end method

.method equivalentXml(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->toXmlString(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XML;

    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->toXmlString(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1f
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->getXML()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->equivalentXml(Ljava/lang/Object;)Z

    move-result p1

    move v1, p1

    goto :goto_49

    :cond_37
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->hasSimpleContent()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_49
    :goto_49
    return v1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method getAnnotation()Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    return-object v0
.end method

.method getAttributes()[Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getAttributes()[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/mozilla/javascript/xmlimpl/XML;

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/xmlimpl/XML;->toXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_17
    return-object v2
.end method

.method getChildren()[Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    sget-object v1, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;->TRUE:Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getMatchingChildren(Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/mozilla/javascript/xmlimpl/XML;

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/xmlimpl/XML;->toXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_21
    return-object v2
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "XML"

    return-object v0
.end method

.method public getExtraMethodSource(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->hasSimpleContent()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIds()[Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->isPrototype()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    new-array v0, v1, [Ljava/lang/Object;

    return-object v0

    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method getLastXmlChild()Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XML;->getXmlChild(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    return-object v0
.end method

.method getNodeQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v0

    return-object v0
.end method

.method getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 2

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->getMyValueOn(Lorg/mozilla/javascript/xmlimpl/XML;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1
.end method

.method final getXML()Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 1

    return-object p0
.end method

.method getXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    return-object p1
.end method

.method getXmlChild(I)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChild(I)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getXml()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->setXml(Lorg/mozilla/javascript/xmlimpl/XML;)V

    :cond_13
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getXml()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    return-object p1
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method hasComplexContent()Z
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->hasSimpleContent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
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

    goto :goto_1f

    :cond_13
    const/4 v1, 0x0

    goto :goto_1f

    :cond_15
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result p1

    if-lez p1, :cond_13

    :goto_1f
    return v1
.end method

.method hasSimpleContent()Z
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isComment()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isProcessingInstruction()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    :cond_d
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isText()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isAttributeType()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_25

    :cond_1d
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->hasChildElement()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_25
    :goto_25
    return v1

    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

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

.method inScopeNamespaces()[Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getInScopeNamespaces()[Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->createNamespaces([Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object v0

    return-object v0
.end method

.method initialize(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->setXml(Lorg/mozilla/javascript/xmlimpl/XML;)V

    return-void
.end method

.method insertChildAfter(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    if-nez p1, :cond_6

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->prependChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    goto :goto_18

    :cond_6
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->getNodesForInsert(Ljava/lang/Object;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getChildIndexOf(Lorg/mozilla/javascript/xmlimpl/XML;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->insertChildrenAt(I[Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    :cond_18
    :goto_18
    return-object p0
.end method

.method insertChildBefore(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    if-nez p1, :cond_6

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->appendChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    goto :goto_16

    :cond_6
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->getNodesForInsert(Ljava/lang/Object;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getChildIndexOf(Lorg/mozilla/javascript/xmlimpl/XML;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->insertChildrenAt(I[Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    :cond_16
    :goto_16
    return-object p0
.end method

.method is(Lorg/mozilla/javascript/xmlimpl/XML;)Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isSameNode(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Z

    move-result p1

    return p1
.end method

.method final isAttribute()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isAttributeType()Z

    move-result v0

    return v0
.end method

.method final isComment()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isCommentType()Z

    move-result v0

    return v0
.end method

.method final isElement()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isElementType()Z

    move-result v0

    return v0
.end method

.method final isProcessingInstruction()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isProcessingInstructionType()Z

    move-result v0

    return v0
.end method

.method final isText()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isTextType()Z

    move-result v0

    return v0
.end method

.method protected jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    array-length p1, p3

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    aget-object p1, p3, v0

    if-eqz p1, :cond_e

    aget-object p1, p3, v0

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v1, :cond_15

    :cond_e
    const/4 p1, 0x1

    new-array p3, p1, [Ljava/lang/Object;

    const-string p1, ""

    aput-object p1, p3, v0

    :cond_15
    aget-object p1, p3, v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->ecmaToXml(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    if-eqz p2, :cond_21

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    move-result-object p1

    :cond_21
    return-object p1
.end method

.method length()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method localName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->name()Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->name()Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method makeXmlFromString(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newTextElementXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method name()Lorg/mozilla/javascript/xmlimpl/QName;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isComment()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_30

    :cond_e
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isProcessingInstruction()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p0, v2, v0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object v0

    return-object v0

    :cond_25
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newQName(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object v0

    return-object v0

    :cond_30
    :goto_30
    return-object v1
.end method

.method namespace(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 3

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getNamespaceDeclaration()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->createNamespace(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getNamespaceDeclaration(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->createNamespace(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    return-object p1
.end method

.method namespaceDeclarations()[Lorg/mozilla/javascript/xmlimpl/Namespace;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getNamespaceDeclarations()[Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->createNamespaces([Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object v0

    return-object v0
.end method

.method nodeKind()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->ecmaClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method normalize()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->normalize()V

    return-void
.end method

.method parent()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->parent()Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->parent()Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    return-object v0
.end method

.method prependChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isParentType()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getNodesForInsert(Ljava/lang/Object;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->insertChildrenAt(I[Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    :cond_12
    return-object p0
.end method

.method processingInstructions(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-static {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;->PROCESSING_INSTRUCTION(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->addMatchingChildren(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;)V

    return-object v0
.end method

.method propertyIsEnumerable(Ljava/lang/Object;)Z
    .registers 11

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_33

    :cond_f
    const/4 v1, 0x0

    goto :goto_33

    :cond_11
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_29

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p1, v3, v5

    if-nez p1, :cond_f

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    div-double/2addr v7, v3

    cmpl-double p1, v7, v5

    if-lez p1, :cond_f

    goto :goto_33

    :cond_29
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_33
    return v1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 4

    const-string p1, "Assignment to indexed XML is not allowed"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {p1, p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->setMyValueOn(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)V

    :goto_a
    return-void
.end method

.method remove()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->deleteMe()V

    return-void
.end method

.method removeChild(I)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->removeChild(I)V

    return-void
.end method

.method removeNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->adapt(Lorg/mozilla/javascript/xmlimpl/Namespace;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->removeNamespace(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)V

    return-object p0
.end method

.method replace(ILjava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->child(I)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-lez v1, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->insertChildAfter(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->removeChild(I)V

    :cond_15
    return-object p0
.end method

.method replace(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    return-object p0
.end method

.method replaceWith(Lorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->parent()Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->replaceWith(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    goto :goto_15

    :cond_10
    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->initialize(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    :goto_15
    return-void
.end method

.method setAttribute(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_20

    :cond_19
    const-string p1, "@* assignment not supported."

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_20
    :goto_20
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->setAttribute(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)V

    return-void

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can only set attributes on elements."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setChildren(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_16

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->removeChild(I)V

    goto :goto_7

    :cond_16
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getNodesForInsert(Ljava/lang/Object;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->insertChildrenAt(I[Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    return-object p0
.end method

.method setLocalName(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isText()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isComment()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    :cond_d
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->setLocalName(Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method setName(Lorg/mozilla/javascript/xmlimpl/QName;)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isText()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isComment()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    :cond_d
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isProcessingInstruction()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->setLocalName(Ljava/lang/String;)V

    return-void

    :cond_1d
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/QName;->getDelegate()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->renameNode(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    :cond_26
    :goto_26
    return-void
.end method

.method setNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isText()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isComment()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->isProcessingInstruction()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_26

    :cond_13
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->uri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->localName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/Namespace;->prefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XML;->setName(Lorg/mozilla/javascript/xmlimpl/QName;)V

    :cond_26
    :goto_26
    return-void
.end method

.method text()Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    sget-object v2, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;->TEXT:Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->addMatchingChildren(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;)V

    return-object v0
.end method

.method toDomNode()Lorg/w3c/dom/Node;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->toDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method toSource(I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->toXMLString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XML;->ecmaToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toXMLString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;->node:Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->ecmaToXMLString(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueOf()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method
