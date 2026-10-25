.class public Lorg/mozilla/javascript/ast/CatchClause;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "CatchClause.java"


# instance fields
.field private body:Lorg/mozilla/javascript/ast/Block;

.field private catchCondition:Lorg/mozilla/javascript/ast/AstNode;

.field private ifPosition:I

.field private lp:I

.field private rp:I

.field private varName:Lorg/mozilla/javascript/ast/Name;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    const/16 v0, 0x7d

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    const/16 p1, 0x7d

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    const/16 p1, 0x7d

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getBody()Lorg/mozilla/javascript/ast/Block;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Block;

    return-object v0
.end method

.method public getCatchCondition()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getIfPosition()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    return v0
.end method

.method public getLp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    return v0
.end method

.method public getRp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    return v0
.end method

.method public getVarName()Lorg/mozilla/javascript/ast/Name;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public setBody(Lorg/mozilla/javascript/ast/Block;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Block;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setCatchCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_7
    return-void
.end method

.method public setIfPosition(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    return-void
.end method

.method public setLp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    return-void
.end method

.method public setParens(II)V
    .registers 3

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    iput p2, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    return-void
.end method

.method public setRp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    return-void
.end method

.method public setVarName(Lorg/mozilla/javascript/ast/Name;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

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

    const-string p1, "catch ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_2d

    const-string p1, " if "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Block;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Block;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 3

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_12
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Block;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Block;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_17
    return-void
.end method
