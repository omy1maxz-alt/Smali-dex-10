.class Lorg/mozilla/javascript/xmlimpl/XmlProcessor;
.super Ljava/lang/Object;
.source "XmlProcessor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5fce35ccf4f46c09L


# instance fields
.field private transient documentBuilderPool:Ljava/util/concurrent/LinkedBlockingDeque;

.field private transient dom:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private errorHandler:Lorg/mozilla/javascript/xmlimpl/XmlProcessor$RhinoSAXErrorHandler;

.field private ignoreComments:Z

.field private ignoreProcessingInstructions:Z

.field private ignoreWhitespace:Z

.field private prettyIndent:I

.field private prettyPrint:Z

.field private transient xform:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor$RhinoSAXErrorHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor$RhinoSAXErrorHandler;-><init>(Lorg/mozilla/javascript/xmlimpl/XmlProcessor$1;)V

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->errorHandler:Lorg/mozilla/javascript/xmlimpl/XmlProcessor$RhinoSAXErrorHandler;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setDefault()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->dom:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->dom:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->xform:Ljavax/xml/transform/TransformerFactory;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_32

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_32
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->dom:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->configureSecureDBF(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->xform:Ljavax/xml/transform/TransformerFactory;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->configureSecureTF(Ljavax/xml/transform/TransformerFactory;)V

    :cond_3c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->documentBuilderPool:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method

.method private addCommentsTo(Ljava/util/List;Lorg/w3c/dom/Node;)V
    .registers 5

    instance-of v0, p2, Lorg/w3c/dom/Comment;

    if-eqz v0, :cond_7

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    :goto_e
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_26

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->addProcessingInstructionsTo(Ljava/util/List;Lorg/w3c/dom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_26
    return-void
.end method

.method private addProcessingInstructionsTo(Ljava/util/List;Lorg/w3c/dom/Node;)V
    .registers 5

    instance-of v0, p2, Lorg/w3c/dom/ProcessingInstruction;

    if-eqz v0, :cond_7

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    :goto_e
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_26

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->addProcessingInstructionsTo(Ljava/util/List;Lorg/w3c/dom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_26
    return-void
.end method

.method private addTextNodesToRemoveAndTrim(Ljava/util/List;Lorg/w3c/dom/Node;)V
    .registers 5

    instance-of v0, p2, Lorg/w3c/dom/Text;

    if-eqz v0, :cond_1f

    move-object v0, p2

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Text;->setData(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    :goto_26
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3e

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->addTextNodesToRemoveAndTrim(Ljava/util/List;Lorg/w3c/dom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3e
    return-void
.end method

.method private beautifyElement(Lorg/w3c/dom/Element;I)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x20

    if-ge v2, p2, :cond_16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :goto_1b
    iget v5, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->prettyIndent:I

    if-ge v4, v5, :cond_25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_30
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_65

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3e

    const/4 v5, 0x1

    :cond_3e
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    instance-of v7, v7, Lorg/w3c/dom/Text;

    if-eqz v7, :cond_56

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_56
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_65
    if-eqz v5, :cond_82

    const/4 v4, 0x0

    :goto_68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_82

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Node;

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Element;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    :cond_82
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_8b
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_a5

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v4, v4, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_a2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_a5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    iget v3, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->prettyIndent:I

    add-int/2addr v3, p2

    invoke-direct {p0, v1, v3}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->beautifyElement(Lorg/w3c/dom/Element;I)V

    goto :goto_a9

    :cond_bc
    if-eqz v5, :cond_c9

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_c9
    return-void
.end method

.method private configureSecureDBF(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .registers 5

    :try_start_0
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V
    :try_end_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_a} :catch_15

    :try_start_a
    const-string v2, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-virtual {p1, v2, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :try_start_f
    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {p1, v1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_14} :catch_14

    :catch_14
    return-void

    :catch_15
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XML parser (DocumentBuilderFactory) cannot be securely configured."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private configureSecureTF(Ljavax/xml/transform/TransformerFactory;)V
    .registers 5

    const-string v0, ""

    :try_start_2
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljavax/xml/transform/TransformerFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_8} :catch_13

    :try_start_8
    const-string v1, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {p1, v1, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_d

    :catch_d
    :try_start_d
    const-string v1, "http://javax.xml.XMLConstants/property/accessExternalStylesheet"

    invoke-virtual {p1, v1, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_12} :catch_12

    :catch_12
    return-void

    :catch_13
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XML parser (TransformerFactory) cannot be securely configured."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private elementToXmlString(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iget-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->prettyPrint:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->beautifyElement(Lorg/w3c/dom/Element;I)V

    :cond_f
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->toString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private escapeElementValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->escapeTextValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDocumentBuilderFromPool()Ljavax/xml/parsers/DocumentBuilder;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->documentBuilderPool:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/parsers/DocumentBuilder;

    if-nez v0, :cond_12

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->getDomFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    :cond_12
    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->errorHandler:Lorg/mozilla/javascript/xmlimpl/XmlProcessor$RhinoSAXErrorHandler;

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-object v0
.end method

.method private getDomFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->dom:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->dom:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->dom:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->xform:Ljavax/xml/transform/TransformerFactory;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    if-eqz p1, :cond_27

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_31

    :cond_27
    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->dom:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->configureSecureDBF(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->xform:Ljavax/xml/transform/TransformerFactory;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->configureSecureTF(Ljavax/xml/transform/TransformerFactory;)V

    :cond_31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->documentBuilderPool:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method

.method private returnDocumentBuilderToPool(Ljavax/xml/parsers/DocumentBuilder;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilder;->reset()V

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->documentBuilderPool:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method

.method private toString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    :try_start_f
    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->xform:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    const-string v3, "omit-xml-declaration"

    const-string/jumbo v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "indent"

    const-string v4, "no"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "method"

    const-string/jumbo v4, "xml"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2f
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_f .. :try_end_2f} :catch_3f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_2f} :catch_38

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->toXmlNewlines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_38
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3f
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private toXmlNewlines(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_23

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1f

    goto :goto_2a

    :cond_1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_23
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final ecmaToXmlString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->prettyPrint:Z

    instance-of v1, p1, Lorg/w3c/dom/Text;

    if-eqz v1, :cond_25

    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->prettyPrint:Z

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->escapeElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    instance-of v1, p1, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_3b

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->escapeAttributeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3b
    instance-of v1, p1, Lorg/w3c/dom/Comment;

    if-eqz v1, :cond_63

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<!--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface {p1}, Lorg/w3c/dom/Comment;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_63
    instance-of v1, p1, Lorg/w3c/dom/ProcessingInstruction;

    if-eqz v1, :cond_97

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_97
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->elementToXmlString(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method escapeAttributeValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    const-string p1, ""

    return-object p1

    :cond_d
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "a"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "b"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->toString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method escapeTextValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toXMLString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    return-object p1

    :cond_16
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "a"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->toString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ge v0, v1, :cond_3c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    :cond_3c
    const-string p1, ""

    :goto_3e
    return-object p1
.end method

.method final getPrettyIndent()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->prettyIndent:I

    return v0
.end method

.method final isIgnoreComments()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ignoreComments:Z

    return v0
.end method

.method final isIgnoreProcessingInstructions()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ignoreProcessingInstructions:Z

    return v0
.end method

.method final isIgnoreWhitespace()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ignoreWhitespace:Z

    return v0
.end method

.method final isPrettyPrinting()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->prettyPrint:Z

    return v0
.end method

.method newDocument()Lorg/w3c/dom/Document;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->getDocumentBuilderFromPool()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_9} :catch_f
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->returnDocumentBuilderToPool(Ljavax/xml/parsers/DocumentBuilder;)V

    return-object v1

    :catchall_d
    move-exception v1

    goto :goto_16

    :catch_f
    move-exception v1

    :try_start_10
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    :goto_16
    if-eqz v0, :cond_1b

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->returnDocumentBuilderToPool(Ljavax/xml/parsers/DocumentBuilder;)V

    :cond_1b
    throw v1
.end method

.method final setDefault()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreComments(Z)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreProcessingInstructions(Z)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreWhitespace(Z)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setPrettyPrinting(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setPrettyIndent(I)V

    return-void
.end method

.method final setIgnoreComments(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ignoreComments:Z

    return-void
.end method

.method final setIgnoreProcessingInstructions(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ignoreProcessingInstructions:Z

    return-void
.end method

.method final setIgnoreWhitespace(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ignoreWhitespace:Z

    return-void
.end method

.method final setPrettyIndent(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->prettyIndent:I

    return-void
.end method

.method final setPrettyPrinting(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->prettyPrint:Z

    return-void
.end method

.method final toXml(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<parent xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</parent>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->getDocumentBuilderFromPool()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance p2, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    iget-boolean p2, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ignoreProcessingInstructions:Z

    if-eqz p2, :cond_55

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->addProcessingInstructionsTo(Ljava/util/List;Lorg/w3c/dom/Node;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_41

    :cond_55
    iget-boolean p2, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ignoreComments:Z

    if-eqz p2, :cond_79

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->addCommentsTo(Ljava/util/List;Lorg/w3c/dom/Node;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_65

    :cond_79
    iget-boolean p2, p0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ignoreWhitespace:Z

    if-eqz p2, :cond_9d

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->addTextNodesToRemoveAndTrim(Ljava/util/List;Lorg/w3c/dom/Node;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_89
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_89

    :cond_9d
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_cc

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_bc

    const-string p2, ""

    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b8} :catch_de
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_b8} :catch_d7
    .catchall {:try_start_1 .. :try_end_b8} :catchall_d5

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->returnDocumentBuilderToPool(Ljavax/xml/parsers/DocumentBuilder;)V

    return-object p1

    :cond_bc
    const/4 v1, 0x0

    :try_start_bd
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c8} :catch_de
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_bd .. :try_end_c8} :catch_d7
    .catchall {:try_start_bd .. :try_end_c8} :catchall_d5

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->returnDocumentBuilderToPool(Ljavax/xml/parsers/DocumentBuilder;)V

    return-object p2

    :cond_cc
    :try_start_cc
    const-string p1, "SyntaxError"

    const-string p2, "XML objects may contain at most one node."

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d5} :catch_de
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_cc .. :try_end_d5} :catch_d7
    .catchall {:try_start_cc .. :try_end_d5} :catchall_d5

    :catchall_d5
    move-exception p1

    goto :goto_e6

    :catch_d7
    move-exception p1

    :try_start_d8
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_de
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unreachable."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e6
    .catchall {:try_start_d8 .. :try_end_e6} :catchall_d5

    :goto_e6
    if-eqz v0, :cond_eb

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->returnDocumentBuilderToPool(Ljavax/xml/parsers/DocumentBuilder;)V

    :cond_eb
    goto :goto_ed

    :goto_ec
    throw p1

    :goto_ed
    goto :goto_ec
.end method
