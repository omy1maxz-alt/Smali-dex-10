.class Lorg/mozilla/javascript/xmlimpl/XMLName;
.super Lorg/mozilla/javascript/Ref;
.source "XMLName.java"


# static fields
.field static final serialVersionUID:J = 0x352ea00d07427a41L


# instance fields
.field private isAttributeName:Z

.field private isDescendants:Z

.field private qname:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

.field private xmlObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/Ref;-><init>()V

    return-void
.end method

.method static accept(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_1 .. :try_end_5} :catch_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isNCNameStartChar(I)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_17
    if-eq v3, v1, :cond_27

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isNCNameChar(I)Z

    move-result v4

    if-nez v4, :cond_24

    return v0

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    return v2

    :cond_28
    return v0

    :catch_29
    move-exception p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/EcmaError;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TypeError"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    return v0

    :cond_37
    goto :goto_39

    :goto_38
    throw p0

    :goto_39
    goto :goto_38
.end method

.method private addAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addMatchingAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    return-void
.end method

.method private addDescendantAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 5

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addMatchingAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->getChildren()[Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    const/4 v0, 0x0

    :goto_e
    array-length v1, p2

    if-ge v0, v1, :cond_19

    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addDescendantAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    return-void
.end method

.method private addDescendantChildren(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 5

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->getChildren()[Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    const/4 v0, 0x0

    :goto_b
    array-length v1, p2

    if-ge v0, v1, :cond_23

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->matches(Lorg/mozilla/javascript/xmlimpl/XML;)Z

    move-result v1

    if-eqz v1, :cond_1b

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :cond_1b
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addDescendantChildren(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_23
    return-void
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 6

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    const/4 v3, 0x1

    if-ne v1, v2, :cond_19

    if-ne v0, v3, :cond_2b

    invoke-static {}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formStar()Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    return-object p0

    :cond_19
    const/16 v0, 0x40

    if-ne v1, v0, :cond_2b

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->setAttributeName()V

    return-object p0

    :cond_2b
    invoke-static {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    return-object p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    return-object p0
.end method

.method static create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLName;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XMLName;-><init>()V

    iput-object p0, v0, Lorg/mozilla/javascript/xmlimpl/XMLName;->qname:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    iput-boolean p1, v0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName:Z

    iput-boolean p2, v0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isDescendants:Z

    return-object v0
.end method

.method static formProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formProperty(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    return-object p0
.end method

.method static formProperty(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 3

    if-eqz p1, :cond_b

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    :cond_b
    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLName;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XMLName;-><init>()V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p0

    iput-object p0, v0, Lorg/mozilla/javascript/xmlimpl/XMLName;->qname:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    return-object v0
.end method

.method static formStar()Lorg/mozilla/javascript/xmlimpl/XMLName;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLName;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XMLName;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/xmlimpl/XMLName;->qname:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    return-object v0
.end method

.method private static isNCNameChar(I)Z
    .registers 4

    and-int/lit8 v0, p0, -0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_33

    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1f

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_19

    return v2

    :cond_19
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    :cond_1f
    const/16 v0, 0x30

    if-lt p0, v0, :cond_29

    const/16 v0, 0x39

    if-gt p0, v0, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1

    :cond_29
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_31

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_32

    :cond_31
    const/4 v1, 0x1

    :cond_32
    return v1

    :cond_33
    and-int/lit16 v0, p0, -0x2000

    if-nez v0, :cond_4b

    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isNCNameStartChar(I)Z

    move-result v0

    if-nez v0, :cond_49

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_49

    const/16 v0, 0x300

    if-gt v0, p0, :cond_4a

    const/16 v0, 0x36f

    if-gt p0, v0, :cond_4a

    :cond_49
    const/4 v1, 0x1

    :cond_4a
    return v1

    :cond_4b
    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isNCNameStartChar(I)Z

    move-result v0

    if-nez v0, :cond_59

    const/16 v0, 0x203f

    if-gt v0, p0, :cond_5a

    const/16 v0, 0x2040

    if-gt p0, v0, :cond_5a

    :cond_59
    const/4 v1, 0x1

    :cond_5a
    return v1
.end method

.method private static isNCNameStartChar(I)Z
    .registers 4

    and-int/lit8 v0, p0, -0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1f

    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_49

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_19

    return v2

    :cond_19
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    :cond_1f
    and-int/lit16 v0, p0, -0x2000

    if-nez v0, :cond_49

    const/16 v0, 0xc0

    if-gt v0, p0, :cond_2b

    const/16 v0, 0xd6

    if-le p0, v0, :cond_47

    :cond_2b
    const/16 v0, 0xd8

    if-gt v0, p0, :cond_33

    const/16 v0, 0xf6

    if-le p0, v0, :cond_47

    :cond_33
    const/16 v0, 0xf8

    if-gt v0, p0, :cond_3b

    const/16 v0, 0x2ff

    if-le p0, v0, :cond_47

    :cond_3b
    const/16 v0, 0x370

    if-gt v0, p0, :cond_43

    const/16 v0, 0x37d

    if-le p0, v0, :cond_47

    :cond_43
    const/16 v0, 0x37f

    if-gt v0, p0, :cond_48

    :cond_47
    const/4 v1, 0x1

    :cond_48
    return v1

    :cond_49
    const/16 v0, 0x200c

    if-gt v0, p0, :cond_51

    const/16 v0, 0x200d

    if-le p0, v0, :cond_87

    :cond_51
    const/16 v0, 0x2070

    if-gt v0, p0, :cond_59

    const/16 v0, 0x218f

    if-le p0, v0, :cond_87

    :cond_59
    const/16 v0, 0x2c00

    if-gt v0, p0, :cond_61

    const/16 v0, 0x2fef

    if-le p0, v0, :cond_87

    :cond_61
    const/16 v0, 0x3001

    if-gt v0, p0, :cond_6a

    const v0, 0xd7ff

    if-le p0, v0, :cond_87

    :cond_6a
    const v0, 0xf900

    if-gt v0, p0, :cond_74

    const v0, 0xfdcf

    if-le p0, v0, :cond_87

    :cond_74
    const v0, 0xfdf0

    if-gt v0, p0, :cond_7e

    const v0, 0xfffd

    if-le p0, v0, :cond_87

    :cond_7e
    const/high16 v0, 0x10000

    if-gt v0, p0, :cond_88

    const v0, 0xeffff

    if-gt p0, v0, :cond_88

    :cond_87
    const/4 v1, 0x1

    :cond_88
    return v1
.end method


# virtual methods
.method addDescendants(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->matchDescendantAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->matchDescendantChildren(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    :goto_d
    return-void
.end method

.method addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isDescendants()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addDescendants(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    goto :goto_35

    :cond_a
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    goto :goto_35

    :cond_14
    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->getChildren()[Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    if-eqz v0, :cond_2e

    const/4 v1, 0x0

    :goto_1b
    array-length v2, v0

    if-ge v1, v2, :cond_2e

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->matches(Lorg/mozilla/javascript/xmlimpl/XML;)Z

    move-result v2

    if-eqz v2, :cond_2b

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2e
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setTargets(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    :goto_35
    return-void
.end method

.method addMatchingAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 5

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XML;->getAttributes()[Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    const/4 v0, 0x0

    :goto_b
    array-length v1, p2

    if-ge v0, v1, :cond_1e

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->matches(Lorg/mozilla/javascript/xmlimpl/XML;)Z

    move-result v1

    if-eqz v1, :cond_1b

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1e
    return-void
.end method

.method public delete(Lorg/mozilla/javascript/Context;)Z
    .registers 3

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->xmlObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    const/4 v0, 0x1

    if-nez p1, :cond_6

    return v0

    :cond_6
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->xmlObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public get(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 3

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->xmlObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method getMyValueOn(Lorg/mozilla/javascript/xmlimpl/XML;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    return-object v0
.end method

.method public has(Lorg/mozilla/javascript/Context;)Z
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->xmlObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z

    move-result p1

    return p1
.end method

.method initXMLObject(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->xmlObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-nez v0, :cond_9

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->xmlObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method isAttributeName()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName:Z

    return v0
.end method

.method isDescendants()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isDescendants:Z

    return v0
.end method

.method localName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->qname:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "*"

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->qname:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method matchDescendantAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setTargets(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addDescendantAttributes(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    return-object p1
.end method

.method matchDescendantChildren(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->setTargets(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->addDescendantChildren(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XML;)V

    return-object p1
.end method

.method final matches(Lorg/mozilla/javascript/xmlimpl/XML;)Z
    .registers 8

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getNodeQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iget-boolean v2, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName:Z

    const-string v3, "*"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4e

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->isAttribute()Z

    move-result p1

    if-eqz p1, :cond_4d

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    :cond_32
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    return v5

    :cond_4c
    :goto_4c
    return v4

    :cond_4d
    return v5

    :cond_4e
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    :cond_64
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    return v4

    :cond_6f
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->isElement()Z

    move-result p1

    if-eqz p1, :cond_84

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_84

    return v4

    :cond_84
    return v5
.end method

.method final matchesElement(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_18
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_35

    :cond_33
    const/4 p1, 0x0

    return p1

    :cond_35
    :goto_35
    const/4 p1, 0x1

    return p1
.end method

.method final matchesLocalName(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    return p1
.end method

.method public set(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->xmlObject:Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-eqz p1, :cond_11

    iget-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isDescendants:Z

    if-nez v0, :cond_c

    invoke-virtual {p1, p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    return-object p2

    :cond_c
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_11
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method setAttributeName()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName:Z

    return-void
.end method

.method setIsDescendants()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isDescendants:Z

    return-void
.end method

.method setMyValueOn(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)V
    .registers 8

    if-nez p2, :cond_5

    const-string p2, "null"

    goto :goto_c

    :cond_5
    instance-of v0, p2, Lorg/mozilla/javascript/Undefined;

    if-eqz v0, :cond_c

    const-string/jumbo p2, "undefined"

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1, p0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->setAttribute(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    goto/16 :goto_a6

    :cond_17
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->setChildren(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    goto/16 :goto_a6

    :cond_2e
    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    check-cast p2, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v0, :cond_4a

    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XML;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->makeXmlFromString(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    :cond_4a
    instance-of v0, p2, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz v0, :cond_78

    const/4 v0, 0x0

    :goto_4f
    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->length()I

    move-result v2

    if-ge v0, v2, :cond_78

    move-object v2, p2

    check-cast v2, Lorg/mozilla/javascript/xmlimpl/XMLList;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XML;->isAttribute()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XML;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Lorg/mozilla/javascript/xmlimpl/XML;->makeXmlFromString(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->replace(ILorg/mozilla/javascript/xmlimpl/XML;)V

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_70
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->makeXmlFromString(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p2

    :cond_78
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XML;->getPropertyList(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v2

    if-nez v2, :cond_86

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->appendChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    goto :goto_a6

    :cond_86
    const/4 v2, 0x1

    :goto_87
    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v3

    if-ge v2, v3, :cond_9b

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XML;->childIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/xmlimpl/XML;->removeChild(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    :cond_9b
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XML;->childIndex()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->replace(ILjava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    :goto_a6
    return-void
.end method

.method final toQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->qname:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isDescendants:Z

    if-eqz v1, :cond_e

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-boolean v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->isAttributeName:Z

    if-eqz v1, :cond_17

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->uri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_42
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->localName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method uri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->qname:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLName;->qname:Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
