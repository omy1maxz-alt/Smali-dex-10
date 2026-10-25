.class public Lorg/mozilla/javascript/ast/StringLiteral;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "StringLiteral.java"


# instance fields
.field private quoteChar:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/16 v0, 0x29

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/16 p1, 0x29

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x29

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getQuoteCharacter()C
    .registers 2

    iget-char v0, p0, Lorg/mozilla/javascript/ast/StringLiteral;->quoteChar:C

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/StringLiteral;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/mozilla/javascript/ast/StringLiteral;->value:Ljava/lang/String;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v0, p0, Lorg/mozilla/javascript/ast/StringLiteral;->quoteChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mozilla/javascript/ast/StringLiteral;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lorg/mozilla/javascript/ast/StringLiteral;->quoteChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setQuoteCharacter(C)V
    .registers 2

    iput-char p1, p0, Lorg/mozilla/javascript/ast/StringLiteral;->quoteChar:C

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/StringLiteral;->value:Ljava/lang/String;

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char p1, p0, Lorg/mozilla/javascript/ast/StringLiteral;->quoteChar:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/StringLiteral;->value:Ljava/lang/String;

    iget-char v1, p0, Lorg/mozilla/javascript/ast/StringLiteral;->quoteChar:C

    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lorg/mozilla/javascript/ast/StringLiteral;->quoteChar:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    return-void
.end method
