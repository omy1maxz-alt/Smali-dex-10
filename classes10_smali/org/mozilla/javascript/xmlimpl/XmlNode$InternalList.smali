.class Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;
.super Ljava/lang/Object;
.source "XmlNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x326b8bba71b12252L


# instance fields
.field private list:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->list:Ljava/util/List;

    return-void
.end method

.method private _add(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method add(Lorg/mozilla/javascript/xmlimpl/XML;)V
    .registers 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getAnnotation()Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->_add(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    return-void
.end method

.method add(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->item(I)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->_add(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method add(Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;II)V
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_c

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->item(I)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->_add(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_c
    return-void
.end method

.method add(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->_add(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    return-void
.end method

.method addToList(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/Undefined;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    if-eqz v0, :cond_20

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XMLList;

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XMLList;->length()I

    move-result v1

    if-ge v0, v1, :cond_37

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XMLList;->item(I)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XML;->getAnnotation()Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->_add(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v0, :cond_2e

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->getAnnotation()Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->_add(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    goto :goto_37

    :cond_2e
    instance-of v0, p1, Lorg/mozilla/javascript/xmlimpl/XmlNode;

    if-eqz v0, :cond_37

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->_add(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    :cond_37
    :goto_37
    return-void
.end method

.method item(I)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/xmlimpl/XmlNode;

    return-object p1
.end method

.method length()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method remove(I)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method
