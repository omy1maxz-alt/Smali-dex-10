.class public Lorg/mozilla/javascript/ast/AstRoot;
.super Lorg/mozilla/javascript/ast/ScriptNode;
.source "AstRoot.java"


# instance fields
.field private comments:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/ScriptNode;-><init>()V

    const/16 v0, 0x89

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;-><init>(I)V

    const/16 p1, 0x89

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public addComment(Lorg/mozilla/javascript/ast/Comment;)V
    .registers 4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstRoot;->comments:Ljava/util/SortedSet;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/mozilla/javascript/ast/AstNode$PositionComparator;

    invoke-direct {v1}, Lorg/mozilla/javascript/ast/AstNode$PositionComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/AstRoot;->comments:Ljava/util/SortedSet;

    :cond_13
    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstRoot;->comments:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public checkParentLinks()V
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/ast/AstRoot$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ast/AstRoot$1;-><init>(Lorg/mozilla/javascript/ast/AstRoot;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    return-void
.end method

.method public debugPrint()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstRoot;->visitAll(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComments()Ljava/util/SortedSet;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstRoot;->comments:Ljava/util/SortedSet;

    return-object v0
.end method

.method public setComments(Ljava/util/SortedSet;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/AstRoot;->comments:Ljava/util/SortedSet;

    goto :goto_21

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstRoot;->comments:Ljava/util/SortedSet;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    :cond_d
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstRoot;->addComment(Lorg/mozilla/javascript/ast/Comment;)V

    goto :goto_11

    :cond_21
    :goto_21
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0xa2

    if-ne v2, v3, :cond_9

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitAll(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstRoot;->visitComments(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    return-void
.end method

.method public visitComments(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstRoot;->comments:Ljava/util/SortedSet;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/Comment;

    invoke-interface {p1, v1}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    goto :goto_8

    :cond_18
    return-void
.end method
