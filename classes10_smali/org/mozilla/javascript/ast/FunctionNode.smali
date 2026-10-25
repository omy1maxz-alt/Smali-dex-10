.class public Lorg/mozilla/javascript/ast/FunctionNode;
.super Lorg/mozilla/javascript/ast/ScriptNode;
.source "FunctionNode.java"


# static fields
.field public static final ARROW_FUNCTION:I = 0x4

.field public static final FUNCTION_EXPRESSION:I = 0x2

.field public static final FUNCTION_EXPRESSION_STATEMENT:I = 0x3

.field public static final FUNCTION_STATEMENT:I = 0x1

.field private static final NO_PARAMS:Ljava/util/List;


# instance fields
.field private body:Lorg/mozilla/javascript/ast/AstNode;

.field private functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

.field private functionName:Lorg/mozilla/javascript/ast/Name;

.field private functionType:I

.field private generatorResumePoints:Ljava/util/List;

.field private isES6Generator:Z

.field private isExpressionClosure:Z

.field private isGenerator:Z

.field private liveLocals:Ljava/util/Map;

.field private lp:I

.field private memberExprNode:Lorg/mozilla/javascript/ast/AstNode;

.field private needsActivation:Z

.field private params:Ljava/util/List;

.field private rp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode;->NO_PARAMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/ScriptNode;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->FUNCTION:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    iput-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->rp:I

    const/16 v0, 0x6e

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;-><init>(I)V

    sget-object p1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->FUNCTION:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    iput-object p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->rp:I

    const/16 p1, 0x6e

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/ast/Name;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;-><init>(I)V

    sget-object p1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->FUNCTION:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    iput-object p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->rp:I

    const/16 p1, 0x6e

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionName(Lorg/mozilla/javascript/ast/Name;)V

    return-void
.end method


# virtual methods
.method public addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I
    .registers 3

    invoke-super {p0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I

    move-result p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->needsActivation:Z

    :cond_d
    return p1
.end method

.method public addLiveLocals(Lorg/mozilla/javascript/Node;[I)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->liveLocals:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->liveLocals:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->liveLocals:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addParam(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->params:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->params:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->params:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public addResumptionPoint(Lorg/mozilla/javascript/Node;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->generatorResumePoints:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->generatorResumePoints:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->generatorResumePoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBody()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->body:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getFunctionName()Lorg/mozilla/javascript/ast/Name;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionName:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public getFunctionType()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionType:I

    return v0
.end method

.method public getLiveLocals()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->liveLocals:Ljava/util/Map;

    return-object v0
.end method

.method public getLp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->lp:I

    return v0
.end method

.method public getMemberExprNode()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->memberExprNode:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionName:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->params:Ljava/util/List;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lorg/mozilla/javascript/ast/FunctionNode;->NO_PARAMS:Ljava/util/List;

    :goto_7
    return-object v0
.end method

.method public getResumptionPoints()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->generatorResumePoints:Ljava/util/List;

    return-object v0
.end method

.method public getRp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->rp:I

    return v0
.end method

.method public isES6Generator()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator:Z

    return v0
.end method

.method public isExpressionClosure()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure:Z

    return v0
.end method

.method public isGenerator()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator:Z

    return v0
.end method

.method public isGetterMethod()Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->GETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isMethod()Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->GETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    if-eq v0, v1, :cond_11

    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->SETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    if-eq v0, v1, :cond_11

    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->METHOD:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public isNormalMethod()Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->METHOD:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isParam(Lorg/mozilla/javascript/ast/AstNode;)Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->params:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_a
    return p1
.end method

.method public isSetterMethod()Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->SETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public requiresActivation()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->needsActivation:Z

    return v0
.end method

.method public setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->body:Lorg/mozilla/javascript/ast/AstNode;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsExpressionClosure(Z)V

    :cond_17
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    iget p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    sub-int p1, v0, p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    iget p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSourceBounds(II)V

    return-void
.end method

.method public setFunctionIsGetterMethod()V
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->GETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    iput-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    return-void
.end method

.method public setFunctionIsNormalMethod()V
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->METHOD:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    iput-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    return-void
.end method

.method public setFunctionIsSetterMethod()V
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->SETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    iput-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionForm:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    return-void
.end method

.method public setFunctionName(Lorg/mozilla/javascript/ast/Name;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionName:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_7
    return-void
.end method

.method public setFunctionType(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionType:I

    return-void
.end method

.method public setIsES6Generator()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator:Z

    iput-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator:Z

    return-void
.end method

.method public setIsExpressionClosure(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure:Z

    return-void
.end method

.method public setIsGenerator()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator:Z

    return-void
.end method

.method public setLp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->lp:I

    return-void
.end method

.method public setMemberExprNode(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->memberExprNode:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_7
    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->params:Ljava/util/List;

    goto :goto_21

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->params:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_11

    :cond_21
    :goto_21
    return-void
.end method

.method public setParens(II)V
    .registers 3

    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->lp:I

    iput p2, p0, Lorg/mozilla/javascript/ast/FunctionNode;->rp:I

    return-void
.end method

.method public setRequiresActivation()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->needsActivation:Z

    return-void
.end method

.method public setRp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->rp:I

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->isMethod()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_23

    const-string v4, "function"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v4, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionName:Lorg/mozilla/javascript/ast/Name;

    const-string v5, " "

    if-eqz v4, :cond_35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionName:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    iget-object v4, p0, Lorg/mozilla/javascript/ast/FunctionNode;->params:Ljava/util/List;

    if-nez v4, :cond_3f

    const-string v4, "() "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_3f
    if-eqz v1, :cond_4d

    iget v6, p0, Lorg/mozilla/javascript/ast/FunctionNode;->lp:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4d

    invoke-virtual {p0, v4, v0}, Lorg/mozilla/javascript/ast/AstNode;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_4d
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/mozilla/javascript/ast/FunctionNode;->params:Ljava/util/List;

    invoke-virtual {p0, v4, v0}, Lorg/mozilla/javascript/ast/AstNode;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5c
    if-eqz v1, :cond_63

    const-string v1, "=> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    iget-boolean v1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure:Z

    if-eqz v1, :cond_99

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    instance-of v1, v1, Lorg/mozilla/javascript/ast/ReturnStatement;

    if-eqz v1, :cond_8e

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/ReturnStatement;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ReturnStatement;->getReturnValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionType:I

    if-ne p1, v2, :cond_a8

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a8

    :cond_8e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a8

    :cond_99
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a8
    :goto_a8
    iget p1, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionType:I

    if-eq p1, v2, :cond_b2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->isMethod()Z

    move-result p1

    if-eqz p1, :cond_b7

    :cond_b2
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 4

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->functionName:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_d
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_15

    :cond_25
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionNode;->memberExprNode:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_37

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_37
    return-void
.end method
