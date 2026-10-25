.class public Lorg/jsoup/parser/XmlTreeBuilder;
.super Lorg/jsoup/parser/TreeBuilder;
.source "XmlTreeBuilder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method defaultSettings()Lorg/jsoup/parser/ParseSettings;
    .registers 2

    sget-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method protected initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    sget-object p2, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    sget-object p2, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode(Lorg/jsoup/nodes/Entities$EscapeMode;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .registers 6

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/TreeBuilder;->tagFor(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p1, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Attributes;->deduplicate(Lorg/jsoup/parser/ParseSettings;)I

    :cond_17
    new-instance v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    iget-object v3, p1, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/ParseSettings;->normalizeAttributes(Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-virtual {p0, v1, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->isSelfClosing()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    move-result p1

    if-nez p1, :cond_3d

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->setSelfClosing()Lorg/jsoup/parser/Tag;

    goto :goto_3d

    :cond_38
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    :goto_3d
    return-object v1
.end method

.method insert(Lorg/jsoup/parser/Token$Character;)V
    .registers 4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isCData()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lorg/jsoup/nodes/CDataNode;

    invoke-direct {v1, v0}, Lorg/jsoup/nodes/CDataNode;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :cond_10
    new-instance v1, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v1, v0}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    :goto_15
    invoke-virtual {p0, v1, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$Comment;)V
    .registers 4

    new-instance v0, Lorg/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->isXmlDeclaration()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object v1

    if-eqz v1, :cond_1a

    move-object v0, v1

    :cond_1a
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$Doctype;)V
    .registers 6

    new-instance v0, Lorg/jsoup/nodes/DocumentType;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getPublicIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getSystemIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getPubSysKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/DocumentType;->setPubSysKey(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method protected insertNode(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilder;->onNodeInserted(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method protected popStackToClose(Lorg/jsoup/parser/Token$EndTag;)V
    .registers 7

    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    iget-object v1, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_16

    sub-int/2addr v1, v2

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1f
    if-lt v2, v1, :cond_37

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_38

    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    :cond_37
    const/4 v3, 0x0

    :goto_38
    if-nez v3, :cond_3b

    return-void

    :cond_3b
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_43
    if-ltz v0, :cond_5b

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-ne v1, v3, :cond_58

    invoke-virtual {p0, v1, p1}, Lorg/jsoup/parser/TreeBuilder;->onNodeClosed(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V

    goto :goto_5b

    :cond_58
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    :cond_5b
    :goto_5b
    return-void
.end method

.method protected process(Lorg/jsoup/parser/Token;)Z
    .registers 4

    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    goto :goto_4b

    :pswitch_24  #0x5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asDoctype()Lorg/jsoup/parser/Token$Doctype;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Doctype;)V

    goto :goto_4b

    :pswitch_2c  #0x4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_4b

    :pswitch_34  #0x3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_4b

    :pswitch_3c  #0x2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->popStackToClose(Lorg/jsoup/parser/Token$EndTag;)V

    goto :goto_4b

    :pswitch_44  #0x1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    :goto_4b
    :pswitch_4b  #0x6
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_44  #00000001
        :pswitch_3c  #00000002
        :pswitch_34  #00000003
        :pswitch_2c  #00000004
        :pswitch_24  #00000005
        :pswitch_4b  #00000006
    .end packed-switch
.end method
