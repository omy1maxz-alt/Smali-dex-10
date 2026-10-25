.class public abstract Lorg/mozilla/javascript/ast/Loop;
.super Lorg/mozilla/javascript/ast/Scope;
.source "Loop.java"


# instance fields
.field protected body:Lorg/mozilla/javascript/ast/AstNode;

.field protected lp:I

.field protected rp:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Scope;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    return-void
.end method


# virtual methods
.method public getBody()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Loop;->body:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    return v0
.end method

.method public getRp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    return v0
.end method

.method public setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 4

    iput-object p1, p0, Lorg/mozilla/javascript/ast/Loop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setLp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    return-void
.end method

.method public setParens(II)V
    .registers 3

    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    iput p2, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    return-void
.end method

.method public setRp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    return-void
.end method
