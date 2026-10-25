.class public Lorg/mozilla/javascript/ast/XmlElemRef;
.super Lorg/mozilla/javascript/ast/XmlRef;
.source "XmlElemRef.java"


# instance fields
.field private indexExpr:Lorg/mozilla/javascript/ast/AstNode;

.field private lb:I

.field private rb:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/XmlRef;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    const/16 v0, 0x4e

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/XmlRef;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    const/16 p1, 0x4e

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/XmlRef;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    const/16 p1, 0x4e

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLb()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    return v0
.end method

.method public getRb()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    return v0
.end method

.method public setBrackets(II)V
    .registers 3

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    iput p2, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    return-void
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setLb(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    return-void
.end method

.method public setRb(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-object p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "::"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 3

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_d
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_12
    return-void
.end method
