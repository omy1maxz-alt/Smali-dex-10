.class final Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter$4;
.super Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;
.source "XmlNode.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;-><init>()V

    return-void
.end method


# virtual methods
.method accept(Lorg/w3c/dom/Node;)Z
    .registers 3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
