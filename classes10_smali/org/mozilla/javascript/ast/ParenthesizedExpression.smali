.class public Lorg/mozilla/javascript/ast/ParenthesizedExpression;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ParenthesizedExpression.java"


# instance fields
.field private expression:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/16 v0, 0x58

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/16 p1, 0x58

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x58

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x58

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x1

    :goto_10
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->expression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->expression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->expression:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 3

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->expression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_b
    return-void
.end method
