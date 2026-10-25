.class public Lorg/mozilla/javascript/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field public static final ARGC_LIMIT:I = 0x10000

.field static final CLEAR_TI_MASK:I = 0xffff

.field private static final GET_ENTRY:I = 0x2

.field private static final METHOD_ENTRY:I = 0x8

.field private static final PROP_ENTRY:I = 0x1

.field private static final SET_ENTRY:I = 0x4

.field static final TI_AFTER_EOL:I = 0x10000

.field static final TI_CHECK_LABEL:I = 0x20000


# instance fields
.field calledByCompileFunction:Z

.field compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private currentFlaggedToken:I

.field private currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

.field private currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

.field currentScope:Lorg/mozilla/javascript/ast/Scope;

.field currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field private currentToken:I

.field private defaultUseStrictDirective:Z

.field private endFlags:I

.field private errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private inDestructuringAssignment:Z

.field private inForInit:Z

.field protected inUseStrictDirective:Z

.field private labelSet:Ljava/util/Map;

.field private loopAndSwitchSet:Ljava/util/List;

.field private loopSet:Ljava/util/List;

.field protected nestingOfFunction:I

.field private parseFinished:Z

.field private prevNameTokenLineno:I

.field private prevNameTokenStart:I

.field private prevNameTokenString:Ljava/lang/String;

.field private scannedComments:Ljava/util/List;

.field private sourceChars:[C

.field private sourceURI:Ljava/lang/String;

.field private syntaxErrorCount:I

.field private ts:Lorg/mozilla/javascript/TokenStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;)V
    .registers 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    instance-of p1, p2, Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_16

    check-cast p2, Lorg/mozilla/javascript/ast/IdeErrorReporter;

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    :cond_16
    return-void
.end method

.method static synthetic access$200(Lorg/mozilla/javascript/Parser;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$202(Lorg/mozilla/javascript/Parser;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lorg/mozilla/javascript/Parser;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lorg/mozilla/javascript/Parser;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lorg/mozilla/javascript/Parser;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lorg/mozilla/javascript/Parser;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lorg/mozilla/javascript/Parser;)I
    .registers 1

    iget p0, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    return p0
.end method

.method static synthetic access$502(Lorg/mozilla/javascript/Parser;I)I
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    return p1
.end method

.method static synthetic access$600(Lorg/mozilla/javascript/Parser;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return p0
.end method

.method static synthetic access$602(Lorg/mozilla/javascript/Parser;Z)Z
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return p1
.end method

.method private addError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 15

    iget v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_14

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v2, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1e

    :cond_14
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    move v4, p5

    move-object v5, p6

    move v6, p7

    invoke-interface/range {v1 .. v6}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_1e
    return-void
.end method

.method private addExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mulExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x15

    if-eq v1, v3, :cond_16

    const/16 v3, 0x16

    if-ne v1, v3, :cond_15

    goto :goto_16

    :cond_15
    return-object v0

    :cond_16
    :goto_16
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mulExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_4
.end method

.method private addStrictWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct/range {p0 .. p7}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    :cond_b
    return-void
.end method

.method private addWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 14

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->reportWarningAsError()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct/range {p0 .. p7}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_24

    :cond_10
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_1a

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v1, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_24

    :cond_1a
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    move v3, p5

    move-object v4, p6

    move v5, p7

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_24
    return-void
.end method

.method private andExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitOrExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/16 v1, 0x6a

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->andExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    :cond_1b
    return-object v0
.end method

.method private argumentList()Ljava/util/List;
    .registers 9

    const/16 v0, 0x59

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    :cond_15
    :try_start_15
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    if-ne v5, v0, :cond_1c

    goto :goto_48

    :cond_1c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_29

    const-string v5, "msg.yield.parenthesized"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_29
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_50

    const/16 v7, 0x78

    if-ne v6, v7, :cond_3d

    :try_start_35
    invoke-direct {p0, v5, v4, v1}, Lorg/mozilla/javascript/Parser;->generatorExpression(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3c} :catch_40
    .catchall {:try_start_35 .. :try_end_3c} :catchall_50

    goto :goto_40

    :cond_3d
    :try_start_3d
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_40
    :goto_40
    const/16 v5, 0x5a

    invoke-direct {p0, v5, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_50

    if-nez v5, :cond_15

    :goto_48
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const-string v3, "msg.no.paren.arg"

    invoke-direct {p0, v0, v3, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    return-object v2

    :catchall_50
    move-exception v0

    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    goto :goto_55

    :goto_54
    throw v0

    :goto_55
    goto :goto_54
.end method

.method private arrayComprehension(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_15

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->arrayComprehensionLoop()Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    const/16 v4, 0x71

    if-ne v3, v4, :cond_2b

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v2

    :cond_2b
    const/16 v3, 0x55

    const/4 v4, 0x1

    const-string v5, "msg.no.bracket.arg"

    invoke-direct {p0, v3, v5, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    new-instance v3, Lorg/mozilla/javascript/ast/ArrayComprehension;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v4, p2

    invoke-direct {v3, p2, v4}, Lorg/mozilla/javascript/ast/ArrayComprehension;-><init>(II)V

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setResult(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setLoops(Ljava/util/List;)V

    if-eqz v2, :cond_59

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setIfPosition(I)V

    iget-object p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilter(Lorg/mozilla/javascript/ast/AstNode;)V

    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilterLp(I)V

    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilterRp(I)V

    :cond_59
    return-object v3
.end method

.method private arrayComprehensionLoop()Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    .registers 14

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/16 v2, 0x27

    const/4 v3, 0x1

    :try_start_1a
    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_ee

    const-string v5, "msg.no.paren.for"

    const/4 v6, -0x1

    if-eqz v4, :cond_3a

    :try_start_23
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "each"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v4, v0

    goto :goto_3b

    :cond_37
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_3a
    const/4 v4, -0x1

    :goto_3b
    const/16 v7, 0x58

    invoke-direct {p0, v7, v5, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v0

    goto :goto_4a

    :cond_49
    const/4 v5, -0x1

    :goto_4a
    const/4 v7, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v8

    if-eq v8, v2, :cond_67

    const/16 v9, 0x54

    if-eq v8, v9, :cond_5f

    const/16 v9, 0x56

    if-eq v8, v9, :cond_5f

    const-string v8, "msg.bad.var"

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_6e

    :cond_5f
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_6e

    :cond_67
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v7

    :goto_6e
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v8

    if-ne v8, v2, :cond_7f

    const/16 v8, 0x9a

    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v9}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    :cond_7f
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v8

    const/4 v9, 0x0

    if-eq v8, v2, :cond_91

    const/16 v2, 0x34

    if-eq v8, v2, :cond_8b

    goto :goto_ad

    :cond_8b
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    goto :goto_b3

    :cond_91
    const-string v2, "of"

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v8}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    if-eq v4, v6, :cond_a6

    const-string v2, "msg.invalid.for.each"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_a6
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    const/4 v8, 0x1

    goto :goto_b4

    :cond_ad
    :goto_ad
    const-string v2, "msg.in.after.for.name"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v2, -0x1

    :goto_b3
    const/4 v8, 0x0

    :goto_b4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    const/16 v11, 0x59

    const-string v12, "msg.no.paren.for.ctrl"

    invoke-direct {p0, v11, v12, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_c8

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v11, v0

    goto :goto_c9

    :cond_c8
    const/4 v11, -0x1

    :goto_c9
    iget-object v12, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v12, v12, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v12, v0

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v10}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/ast/ForInLoop;->setEachPosition(I)V

    if-eq v4, v6, :cond_e0

    goto :goto_e1

    :cond_e0
    const/4 v3, 0x0

    :goto_e1
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForEach(Z)V

    invoke-virtual {v1, v5, v11}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForOf(Z)V
    :try_end_ea
    .catchall {:try_start_23 .. :try_end_ea} :catchall_ee

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :catchall_ee
    move-exception v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v0
.end method

.method private arrayLiteral()Lorg/mozilla/javascript/ast/AstNode;
    .registers 13

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/ast/ArrayLiteral;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1e
    const/4 v9, -0x1

    :goto_1f
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v10

    const/16 v11, 0x5a

    if-ne v10, v11, :cond_41

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    if-nez v7, :cond_32

    const/4 v7, 0x1

    goto :goto_1f

    :cond_32
    new-instance v10, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v10, v11, v6}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_41
    const/16 v11, 0xa2

    if-ne v10, v11, :cond_49

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_1f

    :cond_49
    const/16 v11, 0x55

    if-ne v10, v11, :cond_65

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ArrayLiteral;->setDestructuringLength(I)V

    invoke-virtual {v3, v8}, Lorg/mozilla/javascript/ast/ArrayLiteral;->setSkipCount(I)V

    if-eq v9, v5, :cond_83

    invoke-direct {p0, v1, v2, v9}, Lorg/mozilla/javascript/Parser;->warnTrailingComma(ILjava/util/List;I)V

    goto :goto_83

    :cond_65
    const/16 v9, 0x78

    if-ne v10, v9, :cond_7c

    if-nez v7, :cond_7c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v6, :cond_7c

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->arrayComprehension(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_7c
    const-string v9, "msg.no.bracket.arg"

    if-nez v10, :cond_9c

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_83
    :goto_83
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ArrayLiteral;->addElement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_87

    :cond_97
    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v3

    :cond_9c
    if-nez v7, :cond_a1

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_a1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto/16 :goto_1e
.end method

.method private arrowFunction(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .registers 11

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    :goto_c
    new-instance v2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v2, v1}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {v6, p0, v2}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    :try_start_2b
    instance-of v7, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v7, :cond_45

    const/4 v7, 0x0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lorg/mozilla/javascript/ast/FunctionNode;->setParens(II)V

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    instance-of v7, p1, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-nez v7, :cond_48

    invoke-direct {p0, v2, p1, v4, v5}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_48

    :cond_45
    invoke-direct {p0, v2, p1, v4, v5}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Set;)V

    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_88

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x5a

    invoke-direct {p1, v5}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/16 v7, 0x7b

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/javascript/Node;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {p0, v7, v8, v5}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_5d

    :cond_83
    const/16 v4, 0x17

    invoke-virtual {v2, v4, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    :cond_88
    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/Parser;->parseFunctionBody(ILorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v2, v1, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSourceBounds(II)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_9e
    .catchall {:try_start_2b .. :try_end_9e} :catchall_c1

    invoke-virtual {v6}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result p1

    if-eqz p1, :cond_b1

    const-string p1, "msg.arrowfunction.generator"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    :cond_b1
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->setBaseLineno(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEndLineno(I)V

    return-object v2

    :catchall_c1
    move-exception p1

    invoke-virtual {v6}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    goto :goto_c7

    :goto_c6
    throw p1

    :goto_c7
    goto :goto_c6
.end method

.method private arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Set;)V
    .registers 8

    instance-of v0, p2, Lorg/mozilla/javascript/ast/ArrayLiteral;

    const/16 v1, 0x58

    if-nez v0, :cond_75

    instance-of v0, p2, Lorg/mozilla/javascript/ast/ObjectLiteral;

    if-eqz v0, :cond_b

    goto :goto_75

    :cond_b
    instance-of v0, p2, Lorg/mozilla/javascript/ast/InfixExpression;

    if-eqz v0, :cond_28

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_28

    check-cast p2, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_88

    :cond_28
    instance-of p3, p2, Lorg/mozilla/javascript/ast/Name;

    if-eqz p3, :cond_60

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    check-cast p2, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    iget-boolean p2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz p2, :cond_88

    const-string p2, "eval"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4c

    const-string p2, "arguments"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    :cond_4c
    const-string p2, "msg.bad.id.strict"

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5c

    const-string p2, "msg.dup.param.strict"

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_60
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p3

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p2

    const-string p4, "msg.no.parm"

    invoke-virtual {p0, p4, p3, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_88

    :cond_75
    :goto_75
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p0, v1, p1, p4}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_88
    :goto_88
    return-void
.end method

.method private assignExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 7

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x49

    if-ne v0, v2, :cond_e

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v3

    if-ne v3, v1, :cond_1e

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    const/16 v2, 0x5b

    if-gt v2, v3, :cond_4e

    const/16 v2, 0x66

    if-gt v3, v2, :cond_4e

    iget-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    if-eqz v1, :cond_30

    const-string v1, "msg.destruct.default.vals"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_30
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v4, Lorg/mozilla/javascript/ast/Assignment;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v4, v3, v0, v5, v2}, Lorg/mozilla/javascript/ast/Assignment;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    if-eqz v1, :cond_4c

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_4c
    move-object v0, v4

    goto :goto_6b

    :cond_4e
    const/16 v2, 0x53

    if-ne v3, v2, :cond_5e

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    if-eqz v1, :cond_6b

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    goto :goto_6b

    :cond_5e
    if-nez v1, :cond_6b

    const/16 v1, 0xa5

    if-ne v3, v1, :cond_6b

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->arrowFunction(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :cond_6b
    :goto_6b
    return-object v0
.end method

.method private attributeAccess()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2b

    const/16 v1, 0x27

    if-eq v0, v1, :cond_26

    const/16 v1, 0x54

    if-eq v0, v1, :cond_1f

    const-string v0, "msg.no.name.after.xmlAttr"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v2, v0, v1}, Lorg/mozilla/javascript/Parser;->xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_2b
    iget v0, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const-string v1, "*"

    invoke-direct {p0, v2, v1, v0}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0
.end method

.method private autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekFlaggedToken()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_38

    if-eqz v2, :cond_38

    const/16 v3, 0x53

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x57

    if-eq v2, v3, :cond_38

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-nez v0, :cond_24

    const-string p1, "msg.no.semi.stmt"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_45

    :cond_24
    invoke-static {p1}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/Parser;->warnMissingSemi(II)V

    goto :goto_45

    :cond_2c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    goto :goto_45

    :cond_38
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/Parser;->warnMissingSemi(II)V

    :goto_45
    return-void
.end method

.method private bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->eqExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->eqExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_4

    :cond_1c
    return-object v0
.end method

.method private bitOrExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_4

    :cond_1c
    return-object v0
.end method

.method private bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_4

    :cond_1c
    return-object v0
.end method

.method private block()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x56

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_1f
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    const/16 v2, 0x57

    const-string v3, "msg.no.brace.block"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_36

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :catchall_36
    move-exception v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v0
.end method

.method private breakStatement()Lorg/mozilla/javascript/ast/BreakStatement;
    .registers 8

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x79

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v3

    const/16 v4, 0x27

    const/4 v5, 0x0

    if-ne v3, v4, :cond_26

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v3

    goto :goto_28

    :cond_26
    move v3, v0

    move-object v0, v5

    :goto_28
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_33

    :cond_2f
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v5

    :goto_33
    if-nez v5, :cond_59

    if-nez v0, :cond_59

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-eqz v4, :cond_52

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_42

    goto :goto_52

    :cond_42
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lorg/mozilla/javascript/ast/Jump;

    goto :goto_59

    :cond_52
    :goto_52
    sub-int v4, v3, v2

    const-string v6, "msg.bad.break"

    invoke-virtual {p0, v6, v2, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_59
    :goto_59
    new-instance v4, Lorg/mozilla/javascript/ast/BreakStatement;

    sub-int/2addr v3, v2

    invoke-direct {v4, v2, v3}, Lorg/mozilla/javascript/ast/BreakStatement;-><init>(II)V

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/BreakStatement;->setBreakLabel(Lorg/mozilla/javascript/ast/Name;)V

    if-eqz v5, :cond_67

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/BreakStatement;->setBreakTarget(Lorg/mozilla/javascript/ast/Jump;)V

    :cond_67
    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v4
.end method

.method private checkBadIncDec(Lorg/mozilla/javascript/ast/UnaryExpression;)V
    .registers 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_30

    const/16 v1, 0x21

    if-eq v0, v1, :cond_30

    const/16 v1, 0x24

    if-eq v0, v1, :cond_30

    const/16 v1, 0x44

    if-eq v0, v1, :cond_30

    const/16 v1, 0x26

    if-eq v0, v1, :cond_30

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v0, 0x6b

    if-ne p1, v0, :cond_2b

    const-string p1, "msg.bad.incr"

    goto :goto_2d

    :cond_2b
    const-string p1, "msg.bad.decr"

    :goto_2d
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method private checkCallRequiresActivation(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const-string v1, "eval"

    const/16 v2, 0x27

    if-ne v0, v2, :cond_17

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_17
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x21

    if-ne v0, v2, :cond_32

    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    :cond_2f
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    :cond_32
    return-void
.end method

.method private codeBug()Ljava/lang/RuntimeException;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ts.cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ts.tokenBeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private condExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 10

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->orExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v4, -0x1

    iget-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    :try_start_19
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_55

    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/16 v5, 0x68

    const-string v7, "msg.no.colon.cond"

    invoke-direct {p0, v5, v7, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    :cond_2d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v5

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v7

    sub-int/2addr v7, v5

    new-instance v8, Lorg/mozilla/javascript/ast/ConditionalExpression;

    invoke-direct {v8, v5, v7}, Lorg/mozilla/javascript/ast/ConditionalExpression;-><init>(II)V

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setTestExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v8, v6}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setTrueExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setFalseExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    sub-int/2addr v1, v5

    invoke-virtual {v8, v1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setQuestionMarkPosition(I)V

    sub-int/2addr v4, v5

    invoke-virtual {v8, v4}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setColonPosition(I)V

    move-object v0, v8

    goto :goto_59

    :catchall_55
    move-exception v0

    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw v0

    :cond_59
    :goto_59
    return-object v0
.end method

.method private condition()Lorg/mozilla/javascript/Parser$ConditionData;
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/Parser$ConditionData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser$ConditionData;-><init>(Lorg/mozilla/javascript/Parser$1;)V

    const/16 v1, 0x58

    const-string v2, "msg.no.paren.cond"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    :cond_17
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    const/16 v1, 0x59

    const-string v2, "msg.no.paren.after.cond"

    invoke-direct {p0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    :cond_2d
    iget-object v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v2, v1, Lorg/mozilla/javascript/ast/Assignment;

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    iget-object v2, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    const-string v3, "msg.equal.as.assign"

    const-string v4, ""

    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_44
    return-object v0
.end method

.method private consumeToken()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    return-void
.end method

.method private continueStatement()Lorg/mozilla/javascript/ast/ContinueStatement;
    .registers 9

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v3

    const/16 v4, 0x27

    const/4 v5, 0x0

    if-ne v3, v4, :cond_26

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v3

    goto :goto_28

    :cond_26
    move v3, v0

    move-object v0, v5

    :goto_28
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;

    move-result-object v4

    if-nez v4, :cond_51

    if-nez v0, :cond_51

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    if-eqz v4, :cond_4b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_4b

    :cond_3b
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lorg/mozilla/javascript/ast/Loop;

    goto :goto_6c

    :cond_4b
    :goto_4b
    const-string v4, "msg.continue.outside"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_6c

    :cond_51
    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    instance-of v6, v6, Lorg/mozilla/javascript/ast/Loop;

    if-nez v6, :cond_62

    :cond_5b
    sub-int v6, v3, v2

    const-string v7, "msg.continue.nonloop"

    invoke-virtual {p0, v7, v2, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_62
    if-nez v4, :cond_65

    goto :goto_6c

    :cond_65
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/Loop;

    move-object v5, v4

    :goto_6c
    new-instance v4, Lorg/mozilla/javascript/ast/ContinueStatement;

    sub-int/2addr v3, v2

    invoke-direct {v4, v2, v3}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

    if-eqz v5, :cond_77

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/ContinueStatement;->setTarget(Lorg/mozilla/javascript/ast/Loop;)V

    :cond_77
    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v4
.end method

.method private createNameNode()Lorg/mozilla/javascript/ast/Name;
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    return-object v0
.end method

.method private createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget v1, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    const/4 v3, 0x0

    iput v3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    iput-object v4, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    iput v3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    :cond_23
    if-nez v0, :cond_31

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_32

    :cond_2e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_31
    move-object v4, v0

    :goto_32
    new-instance v0, Lorg/mozilla/javascript/ast/Name;

    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/ast/Name;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    if-eqz p1, :cond_3f

    invoke-virtual {p0, v4, p2}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    :cond_3f
    return-object v0
.end method

.method private createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v2, Lorg/mozilla/javascript/ast/StringLiteral;

    sub-int/2addr v0, v1

    invoke-direct {v2, v1, v0}, Lorg/mozilla/javascript/ast/StringLiteral;-><init>(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/StringLiteral;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getQuoteChar()C

    move-result v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/StringLiteral;->setQuoteCharacter(C)V

    return-object v2
.end method

.method private defaultXmlNamespace()Lorg/mozilla/javascript/ast/AstNode;
    .registers 8

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x75

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    const-string v5, "msg.bad.namespace"

    if-eqz v4, :cond_32

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "xml"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    :cond_32
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_35
    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "namespace"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    :cond_49
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_4c
    const/16 v2, 0x5b

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_57
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    new-instance v4, Lorg/mozilla/javascript/ast/UnaryExpression;

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v4, v0, v5}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(II)V

    const/16 v0, 0x4b

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperator(I)V

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperand(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    new-instance v0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {v0, v4, v3}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    return-object v0
.end method

.method private destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->primaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_b

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    return-object v0

    :catchall_b
    move-exception v0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    throw v0
.end method

.method private doLoop()Lorg/mozilla/javascript/ast/DoLoop;
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x77

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/DoLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/DoLoop;-><init>(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V

    :try_start_1f
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    const/16 v3, 0x76

    const-string v4, "msg.no.while.do"

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/DoLoop;->setWhilePosition(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v3

    iget-object v4, v3, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/ast/DoLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    iget v4, v3, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v4, v0

    iget v3, v3, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v4, v3}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v3

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_4c
    .catchall {:try_start_1f .. :try_end_4c} :catchall_60

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    const/16 v2, 0x53

    invoke-direct {p0, v2, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_5b
    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v1

    :catchall_60
    move-exception v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    throw v0
.end method

.method private enterLoop(Lorg/mozilla/javascript/ast/Loop;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    :cond_1b
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_3d

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Jump;->setLoop(Lorg/mozilla/javascript/ast/Jump;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_3d
    return-void
.end method

.method private enterSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private eqExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 10

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->relExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    const/16 v5, 0xd

    const/16 v6, 0xc

    if-eq v1, v6, :cond_1d

    if-eq v1, v5, :cond_1d

    if-eq v1, v4, :cond_1d

    if-eq v1, v3, :cond_1d

    return-object v0

    :cond_1d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v7

    const/16 v8, 0x78

    if-ne v7, v8, :cond_33

    if-ne v1, v6, :cond_2f

    const/16 v1, 0x2e

    goto :goto_33

    :cond_2f
    if-ne v1, v5, :cond_33

    const/16 v1, 0x2f

    :cond_33
    :goto_33
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->relExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_4
.end method

.method private exitLoop()V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Loop;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_2a
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-void
.end method

.method private exitSwitch()V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private expr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 8

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    :goto_8
    const/4 v2, 0x1

    const/16 v3, 0x5a

    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    sub-int/2addr v4, v1

    const-string v5, "msg.no.side.effects"

    const-string v6, ""

    invoke-virtual {p0, v5, v6, v1, v4}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2f
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_3c

    const-string v4, "msg.yield.parenthesized"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_3c
    new-instance v4, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v4, v3, v0, v5, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v4

    goto :goto_8

    :cond_47
    return-object v0
.end method

.method private forLoop()Lorg/mozilla/javascript/ast/Loop;
    .registers 17

    move-object/from16 v1, p0

    iget v0, v1, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v2, 0x78

    if-eq v0, v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/4 v3, 0x0

    new-instance v4, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v4}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/16 v5, 0x27

    const/4 v6, 0x1

    :try_start_20
    invoke-direct {v1, v5, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v7
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_16d

    const-string v8, "msg.no.paren.for"

    const/4 v9, 0x0

    if-eqz v7, :cond_41

    :try_start_29
    const-string v7, "each"

    iget-object v11, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v11}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    iget-object v7, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v7, v2

    const/4 v11, 0x1

    goto :goto_43

    :cond_3e
    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_41
    const/4 v7, -0x1

    const/4 v11, 0x0

    :goto_43
    const/16 v12, 0x58

    invoke-direct {v1, v12, v8, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_51

    iget-object v8, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v8, v2

    goto :goto_52

    :cond_51
    const/4 v8, -0x1

    :goto_52
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v12

    invoke-direct {v1, v12}, Lorg/mozilla/javascript/Parser;->forLoopInit(I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v12

    const/16 v13, 0x34

    invoke-direct {v1, v13, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v13

    const/16 v14, 0x59

    if-eqz v13, :cond_72

    iget-object v5, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v2

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    move-object v15, v13

    const/4 v9, 0x1

    :goto_6f
    const/4 v13, 0x0

    goto/16 :goto_e3

    :cond_72
    iget-object v13, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v13}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v13

    const/16 v15, 0xc8

    if-lt v13, v15, :cond_9c

    invoke-direct {v1, v5, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5

    if-eqz v5, :cond_9c

    const-string v5, "of"

    iget-object v13, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v13}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    iget-object v5, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v2

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    move-object v15, v13

    const/4 v13, 0x1

    goto :goto_e3

    :cond_9c
    const-string v3, "msg.no.semi.for"

    const/16 v5, 0x53

    invoke-direct {v1, v5, v3, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    if-ne v3, v5, :cond_ba

    new-instance v3, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v13, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v13, v13, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v3, v13, v6}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    iget-object v13, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v13, v13, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v3, v13}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    goto :goto_be

    :cond_ba
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    :goto_be
    move-object v13, v3

    const-string v3, "msg.no.semi.for.cond"

    invoke-direct {v1, v5, v3, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v3, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    if-ne v5, v14, :cond_dc

    new-instance v5, Lorg/mozilla/javascript/ast/EmptyExpression;

    invoke-direct {v5, v3, v6}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    iget-object v3, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    move-object v3, v5

    goto :goto_e0

    :cond_dc
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    :goto_e0
    move-object v15, v13

    const/4 v5, -0x1

    goto :goto_6f

    :goto_e3
    const-string v10, "msg.no.paren.for.ctrl"

    invoke-direct {v1, v14, v10, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_f1

    iget-object v10, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v10, v10, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v10, v2

    goto :goto_f2

    :cond_f1
    const/4 v10, -0x1

    :goto_f2
    if-nez v9, :cond_106

    if-eqz v13, :cond_f7

    goto :goto_106

    :cond_f7
    new-instance v5, Lorg/mozilla/javascript/ast/ForLoop;

    invoke-direct {v5, v2}, Lorg/mozilla/javascript/ast/ForLoop;-><init>(I)V

    invoke-virtual {v5, v12}, Lorg/mozilla/javascript/ast/ForLoop;->setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v5, v15}, Lorg/mozilla/javascript/ast/ForLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/ForLoop;->setIncrement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_13d

    :cond_106
    :goto_106
    new-instance v3, Lorg/mozilla/javascript/ast/ForInLoop;

    invoke-direct {v3, v2}, Lorg/mozilla/javascript/ast/ForInLoop;-><init>(I)V

    instance-of v9, v12, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v9, :cond_121

    move-object v9, v12

    check-cast v9, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getVariables()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v6, :cond_121

    const-string v6, "msg.mult.index"

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_121
    if-eqz v13, :cond_12a

    if-eqz v11, :cond_12a

    const-string v6, "msg.invalid.for.each"

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_12a
    invoke-virtual {v3, v12}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v15}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    invoke-virtual {v3, v11}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForEach(Z)V

    invoke-virtual {v3, v7}, Lorg/mozilla/javascript/ast/ForInLoop;->setEachPosition(I)V

    invoke-virtual {v3, v13}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForOf(Z)V

    move-object v5, v3

    :goto_13d
    iget-object v3, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/Scope;->replaceWith(Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    invoke-direct {v1, v5}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V
    :try_end_148
    .catchall {:try_start_29 .. :try_end_148} :catchall_16d

    :try_start_148
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_157
    .catchall {:try_start_148 .. :try_end_157} :catchall_168

    :try_start_157
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_16d

    iget-object v2, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v2, v4, :cond_161

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_161
    invoke-virtual {v5, v8, v10}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v5

    :catchall_168
    move-exception v0

    :try_start_169
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    throw v0
    :try_end_16d
    .catchall {:try_start_169 .. :try_end_16d} :catchall_16d

    :catchall_16d
    move-exception v0

    iget-object v2, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v2, v4, :cond_175

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_175
    goto :goto_177

    :goto_176
    throw v0

    :goto_177
    goto :goto_176
.end method

.method private forLoopInit(I)Lorg/mozilla/javascript/ast/AstNode;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/16 v2, 0x53

    if-ne p1, v2, :cond_19

    new-instance p1, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p1, v2, v0}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    goto :goto_35

    :cond_19
    const/16 v0, 0x7b

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x9a

    if-ne p1, v0, :cond_22

    goto :goto_2a

    :cond_22
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_35

    :cond_2a
    :goto_2a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object p1
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_38

    :goto_35
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object p1

    :catchall_38
    move-exception p1

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw p1
.end method

.method private function(I)Lorg/mozilla/javascript/ast/FunctionNode;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->function(IZ)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p1

    return-object p1
.end method

.method private function(IZ)Lorg/mozilla/javascript/ast/FunctionNode;
    .registers 14

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "msg.no.paren.parms"

    const/4 v7, 0x0

    const/16 v8, 0x58

    if-eqz v4, :cond_4f

    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v4, :cond_36

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const-string v9, "eval"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    const-string v9, "arguments"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    :cond_31
    const-string v9, "msg.bad.id.strict"

    invoke-virtual {p0, v9, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    invoke-direct {p0, v8, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    if-nez v4, :cond_82

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isAllowMemberExprAsFunctionName()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-direct {p0, v5, v2}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    move-object v10, v7

    move-object v7, v2

    move-object v2, v10

    :cond_4b
    invoke-direct {p0, v8, v6, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    goto :goto_82

    :cond_4f
    invoke-direct {p0, v8, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_57

    move-object v2, v7

    goto :goto_82

    :cond_57
    const/16 v2, 0x17

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v2

    const/16 v4, 0xc8

    if-lt v2, v4, :cond_6e

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/Parser;->function(IZ)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p1

    return-object p1

    :cond_6e
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isAllowMemberExprAsFunctionName()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    goto :goto_7c

    :cond_7b
    move-object v2, v7

    :goto_7c
    invoke-direct {p0, v8, v6, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-object v10, v7

    move-object v7, v2

    move-object v2, v10

    :cond_82
    :goto_82
    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/4 v4, -0x1

    if-ne v3, v8, :cond_8c

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_8d

    :cond_8c
    const/4 v3, -0x1

    :goto_8d
    const/4 v5, 0x2

    if-eqz v7, :cond_92

    const/4 v6, 0x2

    goto :goto_93

    :cond_92
    move v6, p1

    :goto_93
    if-eq v6, v5, :cond_a6

    if-eqz v2, :cond_a6

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v5

    if-lez v5, :cond_a6

    const/16 v5, 0x6e

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    :cond_a6
    new-instance v5, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v5, v0, v2}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>(ILorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    if-eqz p2, :cond_b3

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsES6Generator()V

    :cond_b3
    if-eq v3, v4, :cond_b9

    sub-int/2addr v3, v0

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/FunctionNode;->setLp(I)V

    :cond_b9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object p2

    invoke-virtual {v5, p2}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    new-instance p2, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {p2, p0, v5}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    :try_start_c5
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->parseFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;)V

    invoke-direct {p0, p1, v5}, Lorg/mozilla/javascript/Parser;->parseFunctionBody(ILorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v5, v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSourceBounds(II)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p1, v0

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result p1

    if-eqz p1, :cond_109

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->hasConsistentReturnUsage()Z

    move-result p1

    if-nez p1, :cond_109

    if-eqz v2, :cond_fb

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result p1

    if-lez p1, :cond_fb

    const-string p1, "msg.no.return.value"

    goto :goto_fd

    :cond_fb
    const-string p1, "msg.anon.no.return.value"

    :goto_fd
    if-nez v2, :cond_102

    const-string v0, ""

    goto :goto_106

    :cond_102
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_106
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_c5 .. :try_end_109} :catchall_131

    :cond_109
    invoke-virtual {p2}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    if-eqz v7, :cond_114

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    invoke-virtual {v5, v7}, Lorg/mozilla/javascript/ast/FunctionNode;->setMemberExprNode(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_114
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setBaseLineno(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEndLineno(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result p1

    if-eqz p1, :cond_130

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_130
    return-object v5

    :catchall_131
    move-exception p1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    throw p1
.end method

.method private generatorExpression(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/Parser;->generatorExpression(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    return-object p1
.end method

.method private generatorExpression(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/AstNode;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_15

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->generatorExpressionLoop()Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    const/16 v4, 0x71

    if-ne v3, v4, :cond_2b

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v2

    :cond_2b
    if-nez p3, :cond_35

    const/16 p3, 0x59

    const/4 v3, 0x1

    const-string v4, "msg.no.paren.let"

    invoke-direct {p0, p3, v4, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    :cond_35
    new-instance p3, Lorg/mozilla/javascript/ast/GeneratorExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v3, p2

    invoke-direct {p3, p2, v3}, Lorg/mozilla/javascript/ast/GeneratorExpression;-><init>(II)V

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setResult(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setLoops(Ljava/util/List;)V

    if-eqz v2, :cond_5b

    invoke-virtual {p3, v1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setIfPosition(I)V

    iget-object p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setFilter(Lorg/mozilla/javascript/ast/AstNode;)V

    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setFilterLp(I)V

    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setFilterRp(I)V

    :cond_5b
    return-object p3
.end method

.method private generatorExpressionLoop()Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;
    .registers 11

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/16 v2, 0x58

    :try_start_19
    const-string v3, "msg.no.paren.for"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_29

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    goto :goto_2a

    :cond_29
    const/4 v2, -0x1

    :goto_2a
    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    const/16 v7, 0x27

    if-eq v6, v7, :cond_49

    const/16 v8, 0x54

    if-eq v6, v8, :cond_41

    const/16 v8, 0x56

    if-eq v6, v8, :cond_41

    const-string v6, "msg.bad.var"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_50

    :cond_41
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_50

    :cond_49
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    :goto_50
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v7, :cond_61

    const/16 v6, 0x9a

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v7}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v4}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    :cond_61
    const/16 v6, 0x34

    const-string v7, "msg.in.after.for.name"

    invoke-direct {p0, v6, v7, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_71

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v6, v0

    goto :goto_72

    :cond_71
    const/4 v6, -0x1

    :goto_72
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    const/16 v8, 0x59

    const-string v9, "msg.no.paren.for.ctrl"

    invoke-direct {p0, v8, v9, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_85

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v3, v0

    :cond_85
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v4, v0

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V
    :try_end_99
    .catchall {:try_start_19 .. :try_end_99} :catchall_9d

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :catchall_9d
    move-exception v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v0
.end method

.method private getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    return-object v0
.end method

.method private static getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v0, :cond_15

    check-cast p0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p0

    instance-of v0, p0, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v0, :cond_15

    check-cast p0, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0xa2

    if-ne v2, v1, :cond_1a

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz p1, :cond_16

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_19

    :cond_16
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    :goto_19
    move-object v0, v1

    :cond_1a
    return-object v0
.end method

.method private static getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private ifStatement()Lorg/mozilla/javascript/ast/IfStatement;
    .registers 10

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x71

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/4 v2, -0x1

    new-instance v3, Lorg/mozilla/javascript/ast/IfStatement;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/ast/IfStatement;-><init>(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v4

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x72

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    const/16 v6, 0xa2

    if-ne v2, v6, :cond_45

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/IfStatement;->setElseKeyWordInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    :cond_45
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    :cond_4e
    if-eqz v6, :cond_52

    move-object v7, v6

    goto :goto_53

    :cond_52
    move-object v7, v5

    :goto_53
    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v3, v7}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    iget-object v7, v4, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v7}, Lorg/mozilla/javascript/ast/IfStatement;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    iget v7, v4, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v7, v1

    iget v4, v4, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v7, v4}, Lorg/mozilla/javascript/ast/IfStatement;->setParens(II)V

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/IfStatement;->setThenPart(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/IfStatement;->setElsePart(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/IfStatement;->setElsePosition(I)V

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v3
.end method

.method private let(ZI)Lorg/mozilla/javascript/ast/AstNode;
    .registers 9

    new-instance v0, Lorg/mozilla/javascript/ast/LetNode;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/ast/LetNode;-><init>(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    const/16 v1, 0x58

    const-string v2, "msg.no.paren.after.let"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setLp(I)V

    :cond_1f
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_22
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v2, 0x9a

    invoke-direct {p0, v2, v1, p1}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)V

    const/16 v1, 0x59

    const-string v4, "msg.no.paren.let"

    invoke-direct {p0, v1, v4, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setRp(I)V

    :cond_41
    if-eqz p1, :cond_74

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v4, 0x56

    if-ne v1, v4, :cond_74

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statements()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    const/16 v4, 0x57

    const-string v5, "msg.no.curly.let"

    invoke-direct {p0, v4, v5, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto :goto_9d

    :cond_74
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    if-eqz p1, :cond_9d

    new-instance p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result p2

    if-nez p2, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v3, 0x0

    :goto_8f
    invoke-direct {p1, v0, v3}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->setLineno(I)V
    :try_end_99
    .catchall {:try_start_22 .. :try_end_99} :catchall_a1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :cond_9d
    :goto_9d
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v0

    :catchall_a1
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private letStatement()Lorg/mozilla/javascript/ast/AstNode;
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x9a

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    const/16 v4, 0x58

    const/4 v5, 0x1

    if-ne v3, v4, :cond_20

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/Parser;->let(ZI)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_24

    :cond_20
    invoke-direct {p0, v1, v0, v5}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v0

    :goto_24
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0
.end method

.method private lineBeginningFor(I)I
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->sourceChars:[C

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-gtz p1, :cond_a

    return v2

    :cond_a
    array-length v3, v0

    if-lt p1, v3, :cond_10

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_10
    add-int/2addr p1, v1

    if-ltz p1, :cond_1e

    aget-char v3, v0, p1

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v3

    if-eqz v3, :cond_10

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1e
    return v2
.end method

.method private makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/ast/ErrorNode;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/ast/ErrorNode;-><init>(II)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0
.end method

.method private matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_24

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/ast/LabeledStatement;

    :cond_1d
    if-nez v1, :cond_24

    const-string v0, "msg.undef.label"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_24
    return-object v1
.end method

.method private matchToken(IZ)Z
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    :goto_4
    const/16 v1, 0xa2

    if-ne v0, v1, :cond_12

    if-eqz p2, :cond_12

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    goto :goto_4

    :cond_12
    if-eq v0, p1, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 p1, 0x1

    return p1
.end method

.method private memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;
    .registers 10

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_11

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->primaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_72

    :cond_11
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v2, Lorg/mozilla/javascript/ast/NewExpression;

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/ast/NewExpression;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/FunctionCall;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    const/16 v3, 0x58

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->argumentList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_49

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/high16 v7, 0x10000

    if-le v6, v7, :cond_49

    const-string v6, "msg.too.many.constructor.args"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_49
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    if-eqz v4, :cond_54

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/FunctionCall;->setArguments(Ljava/util/List;)V

    :cond_54
    sub-int/2addr v3, v0

    sub-int/2addr v7, v0

    invoke-virtual {v2, v3, v7}, Lorg/mozilla/javascript/ast/FunctionCall;->setParens(II)V

    move v4, v6

    :cond_5a
    const/16 v3, 0x56

    invoke-direct {p0, v3, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/NewExpression;->setInitializer(Lorg/mozilla/javascript/ast/ObjectLiteral;)V

    :cond_6d
    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    move-object v0, v2

    :goto_72
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    return-object p1
.end method

.method private memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .registers 12

    if-nez p2, :cond_5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    :goto_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x54

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_cb

    const/16 v2, 0x58

    const/high16 v5, 0x10000

    if-eq v1, v2, :cond_84

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_78

    const/16 v2, 0x90

    if-eq v1, v2, :cond_78

    const/16 v2, 0x93

    if-eq v1, v2, :cond_39

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_2a

    goto :goto_86

    :cond_2a
    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->peekUntilNonComment(I)I

    iget v1, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    and-int v3, v1, v5

    if-eqz v3, :cond_36

    move v2, v1

    :cond_36
    iput v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    goto :goto_9

    :cond_39
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    const/16 v7, 0x59

    const-string v8, "msg.no.paren"

    invoke-direct {p0, v7, v8, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_60

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v6, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_60
    new-instance v3, Lorg/mozilla/javascript/ast/XmlDotQuery;

    sub-int/2addr v6, v0

    invoke-direct {v3, v0, v6}, Lorg/mozilla/javascript/ast/XmlDotQuery;-><init>(II)V

    invoke-virtual {v3, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/XmlDotQuery;->setRp(I)V

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    goto/16 :goto_fe

    :cond_78
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/Parser;->propertyAccess(ILorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    goto :goto_9

    :cond_84
    if-nez p1, :cond_87

    :goto_86
    return-object p2

    :cond_87
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/Parser;->checkCallRequiresActivation(Lorg/mozilla/javascript/ast/AstNode;)V

    new-instance v2, Lorg/mozilla/javascript/ast/FunctionCall;

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/ast/FunctionCall;-><init>(I)V

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/FunctionCall;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, p2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr p2, v0

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/FunctionCall;->setLp(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->argumentList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_b5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_b5

    const-string v1, "msg.too.many.function.args"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_b5
    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/FunctionCall;->setArguments(Ljava/util/List;)V

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, p2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr p2, v0

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/FunctionCall;->setRp(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, p2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p2, v0

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    move-object p2, v2

    goto/16 :goto_9

    :cond_cb
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    const/16 v7, 0x55

    const-string v8, "msg.no.bracket.index"

    invoke-direct {p0, v7, v8, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_ec

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v6, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_ec
    new-instance v3, Lorg/mozilla/javascript/ast/ElementGet;

    sub-int/2addr v6, v0

    invoke-direct {v3, v0, v6}, Lorg/mozilla/javascript/ast/ElementGet;-><init>(II)V

    invoke-virtual {v3, p2}, Lorg/mozilla/javascript/ast/ElementGet;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/ElementGet;->setElement(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v2, v4}, Lorg/mozilla/javascript/ast/ElementGet;->setParens(II)V

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_fe
    move-object p2, v3

    goto/16 :goto_9
.end method

.method private methodDefinition(ILorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;
    .registers 7

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "msg.bad.prop"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_16
    new-instance v2, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v2, p1}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>(I)V

    if-eq p3, v0, :cond_33

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2c

    const/16 v0, 0x8

    if-eq p3, v0, :cond_25

    goto :goto_39

    :cond_25
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsNormalMethod()V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionIsNormalMethod()V

    goto :goto_39

    :cond_2c
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsSetterMethod()V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionIsSetterMethod()V

    goto :goto_39

    :cond_33
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsGetterMethod()V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionIsGetterMethod()V

    :goto_39
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p3

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    sub-int/2addr p3, p1

    invoke-virtual {v2, p3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v2
.end method

.method private mulExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    packed-switch v1, :pswitch_data_20

    goto :goto_1e

    :pswitch_10  #0x17, 0x18, 0x19
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_4

    :goto_1e
    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x17
        :pswitch_10  #00000017
        :pswitch_10  #00000018
        :pswitch_10  #00000019
    .end packed-switch
.end method

.method private mustHaveXML()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "msg.XML.not.available"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private mustMatchToken(ILjava/lang/String;IIZ)Z
    .registers 6

    invoke-direct {p0, p1, p5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    invoke-virtual {p0, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    const/4 p1, 0x0

    return p1
.end method

.method private mustMatchToken(ILjava/lang/String;Z)Z
    .registers 11

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int v5, v0, v4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;IIZ)Z

    move-result p1

    return p1
.end method

.method private name(II)Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/high16 v2, 0x20000

    and-int/2addr p1, v2

    if-eqz p1, :cond_2e

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result p1

    const/16 v2, 0x68

    if-ne p1, v2, :cond_2e

    new-instance p1, Lorg/mozilla/javascript/ast/Label;

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-direct {p1, v1, v0}, Lorg/mozilla/javascript/ast/Label;-><init>(II)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/Label;->setName(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, p2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object p1

    :cond_2e
    invoke-direct {p0, v1, p2, v0}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result p1

    if-eqz p1, :cond_40

    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    return-object p1

    :cond_40
    const/4 p1, 0x1

    const/16 p2, 0x27

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    return-object p1
.end method

.method private nameOrLabel()Lorg/mozilla/javascript/ast/AstNode;
    .registers 9

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_ff

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x83

    if-eq v4, v5, :cond_2d

    new-instance v0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    iget v1, v2, Lorg/mozilla/javascript/Node;->lineno:I

    iput v1, v0, Lorg/mozilla/javascript/Node;->lineno:I

    return-object v0

    :cond_2d
    new-instance v4, Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-direct {v4, v0}, Lorg/mozilla/javascript/ast/LabeledStatement;-><init>(I)V

    check-cast v2, Lorg/mozilla/javascript/ast/Label;

    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_3e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    const/4 v6, 0x0

    if-ne v2, v1, :cond_69

    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    if-eq v7, v5, :cond_63

    new-instance v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_6a

    :cond_63
    check-cast v2, Lorg/mozilla/javascript/ast/Label;

    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V

    goto :goto_3e

    :cond_69
    move-object v1, v6

    :goto_6a
    :try_start_6a
    iput-object v4, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-nez v1, :cond_a6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statementHelper()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    const/16 v3, 0xa2

    if-ne v2, v3, :cond_a6

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    if-ne v2, v3, :cond_a6

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_a6
    .catchall {:try_start_6a .. :try_end_a6} :catchall_dd

    :cond_a6
    iput-object v6, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/Label;

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    :cond_c6
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-nez v2, :cond_d2

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_d6

    :cond_d2
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    :goto_d6
    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/ast/LabeledStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v4

    :catchall_dd
    move-exception v0

    iput-object v6, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Label;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e8

    :cond_fe
    throw v0

    :cond_ff
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_105

    :goto_104
    throw v0

    :goto_105
    goto :goto_104
.end method

.method private nextToken()I
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    return v0
.end method

.method private static nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static final nowAllSet(III)Z
    .registers 3

    and-int/2addr p0, p2

    if-eq p0, p2, :cond_9

    and-int p0, p1, p2

    if-ne p0, p2, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;
    .registers 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    goto :goto_1e

    :cond_1c
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1e
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_24
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v11

    const/16 v12, 0xa2

    if-ne v10, v12, :cond_37

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {v0, v10}, Lorg/mozilla/javascript/Parser;->peekUntilNonComment(I)I

    move-result v10

    :cond_37
    const/16 v12, 0x57

    if-ne v10, v12, :cond_43

    if-eq v9, v8, :cond_40

    invoke-direct {v0, v2, v3, v9}, Lorg/mozilla/javascript/Parser;->warnTrailingComma(ILjava/util/List;I)V

    :cond_40
    const/4 v8, 0x1

    goto/16 :goto_11a

    :cond_43
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    const-string v15, "msg.bad.prop"

    const/16 v5, 0x5a

    if-nez v9, :cond_54

    invoke-virtual {v0, v15}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v5, 0x1

    :goto_51
    const/4 v13, 0x0

    goto/16 :goto_c2

    :cond_54
    iget-object v13, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v13}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v13

    iget-object v8, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v14

    if-eq v14, v5, :cond_b7

    const/16 v5, 0x68

    if-eq v14, v5, :cond_b7

    if-eq v14, v12, :cond_b7

    const/16 v5, 0x58

    if-ne v14, v5, :cond_74

    const/16 v5, 0x8

    goto :goto_91

    :cond_74
    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v10, 0x27

    if-ne v5, v10, :cond_90

    const-string v5, "get"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    const/4 v5, 0x2

    goto :goto_91

    :cond_86
    const-string v5, "set"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    const/4 v5, 0x4

    goto :goto_91

    :cond_90
    const/4 v5, 0x1

    :goto_91
    const/4 v10, 0x2

    if-eq v5, v10, :cond_97

    const/4 v10, 0x4

    if-ne v5, v10, :cond_a3

    :cond_97
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    if-nez v9, :cond_a0

    invoke-virtual {v0, v15}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_a0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    :cond_a3
    if-nez v9, :cond_a6

    goto :goto_51

    :cond_a6
    iget-object v10, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v10}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v8, v9, v5}, Lorg/mozilla/javascript/Parser;->methodDefinition(ILorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v8

    invoke-virtual {v9, v11}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    :cond_b7
    invoke-virtual {v9, v11}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    invoke-direct {v0, v9, v10}, Lorg/mozilla/javascript/Parser;->plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :goto_c2
    iget-boolean v8, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v8, :cond_107

    if-eqz v13, :cond_107

    const-string v8, "msg.dup.obj.lit.prop.strict"

    const/4 v9, 0x1

    if-eq v5, v9, :cond_f2

    const/4 v9, 0x2

    if-eq v5, v9, :cond_e5

    const/4 v9, 0x4

    if-eq v5, v9, :cond_d8

    const/16 v9, 0x8

    if-eq v5, v9, :cond_f2

    goto :goto_107

    :cond_d8
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    invoke-virtual {v0, v8, v13}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_107

    :cond_e5
    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-virtual {v0, v8, v13}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_107

    :cond_f2
    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fe

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    :cond_fe
    invoke-virtual {v0, v8, v13}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_101
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_107
    :goto_107
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    const/16 v5, 0x5a

    const/4 v8, 0x1

    invoke-direct {v0, v5, v8}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5

    if-eqz v5, :cond_11a

    iget-object v5, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 v8, -0x1

    goto/16 :goto_24

    :cond_11a
    :goto_11a
    const-string v4, "msg.no.brace.prop"

    invoke-direct {v0, v12, v4, v8}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    new-instance v4, Lorg/mozilla/javascript/ast/ObjectLiteral;

    iget-object v5, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v5, v2

    invoke-direct {v4, v2, v5}, Lorg/mozilla/javascript/ast/ObjectLiteral;-><init>(II)V

    if-eqz v7, :cond_12e

    invoke-virtual {v4, v7}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_12e
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/ObjectLiteral;->setElements(Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v4
.end method

.method private objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    goto :goto_45

    :pswitch_28  #0x29
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;

    move-result-object v0

    goto :goto_45

    :pswitch_2d  #0x28
    new-instance v0, Lorg/mozilla/javascript/ast/NumberLiteral;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getNumber()D

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/mozilla/javascript/ast/NumberLiteral;-><init>(ILjava/lang/String;D)V

    goto :goto_45

    :pswitch_41  #0x27
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    :goto_45
    return-object v0

    :cond_46
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_48
    .packed-switch 0x27
        :pswitch_41  #00000027
        :pswitch_2d  #00000028
        :pswitch_28  #00000029
    .end packed-switch
.end method

.method private orExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->andExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/16 v1, 0x69

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->orExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    :cond_1b
    return-object v0
.end method

.method private parenExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 9

    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    :try_start_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x59

    if-ne v4, v5, :cond_1d

    new-instance v4, Lorg/mozilla/javascript/ast/EmptyExpression;

    invoke-direct {v4, v2}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(I)V

    goto :goto_21

    :cond_1d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    :goto_21
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_30

    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/Parser;->generatorExpression(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_6d

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v1

    :cond_30
    :try_start_30
    const-string v6, "msg.no.paren"

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x81

    if-ne v5, v6, :cond_52

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0xa5

    if-eq v5, v6, :cond_52

    const-string v1, "msg.syntax"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v1
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_6d

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v1

    :cond_52
    :try_start_52
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v5, v2

    new-instance v6, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-direct {v6, v2, v5, v4}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    if-nez v1, :cond_65

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    :cond_65
    if-eqz v1, :cond_6a

    invoke-virtual {v6, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_6d

    :cond_6a
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v6

    :catchall_6d
    move-exception v1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw v1
.end method

.method private parse()Lorg/mozilla/javascript/ast/AstRoot;
    .registers 11

    new-instance v0, Lorg/mozilla/javascript/ast/AstRoot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->defaultUseStrictDirective:Z

    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1a

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->setInStrictMode(Z)V

    :cond_1a
    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_1c
    :try_start_1c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v7

    if-gtz v7, :cond_23

    goto :goto_36

    :cond_23
    const/16 v8, 0x6e

    if-ne v7, v8, :cond_39

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_2a
    .catch Ljava/lang/StackOverflowError; {:try_start_1c .. :try_end_2a} :catch_78
    .catchall {:try_start_1c .. :try_end_2a} :catchall_75

    :try_start_2a
    iget-boolean v7, p0, Lorg/mozilla/javascript/Parser;->calledByCompileFunction:Z

    if-eqz v7, :cond_30

    const/4 v7, 0x2

    goto :goto_31

    :cond_30
    const/4 v7, 0x1

    :goto_31
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v7
    :try_end_35
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_2a .. :try_end_35} :catch_36
    .catch Ljava/lang/StackOverflowError; {:try_start_2a .. :try_end_35} :catch_78
    .catchall {:try_start_2a .. :try_end_35} :catchall_75

    goto :goto_6a

    :catch_36
    :goto_36
    iput-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    goto :goto_87

    :cond_39
    const/16 v8, 0xa2

    if-ne v7, v8, :cond_4e

    :try_start_3d
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_6a

    :cond_4e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    if-eqz v3, :cond_6a

    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5c

    const/4 v3, 0x0

    goto :goto_6a

    :cond_5c
    const-string/jumbo v9, "use strict"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->setInStrictMode(Z)V

    :cond_6a
    :goto_6a
    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_74
    .catch Ljava/lang/StackOverflowError; {:try_start_3d .. :try_end_74} :catch_78
    .catchall {:try_start_3d .. :try_end_74} :catchall_75

    goto :goto_1c

    :catchall_75
    move-exception v0

    goto/16 :goto_f9

    :catch_78
    :try_start_78
    const-string v3, "msg.too.deep.parser.recursion"

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v7
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_75

    if-eqz v7, :cond_ed

    goto :goto_36

    :goto_87
    iget v2, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    if-eqz v2, :cond_aa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg.got.syntax.errors"

    invoke-virtual {p0, v3, v2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v3

    if-eqz v3, :cond_9e

    goto :goto_aa

    :cond_9e
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lorg/mozilla/javascript/ErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_aa
    :goto_aa
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    if-eqz v2, :cond_d9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/AstRoot;->addComment(Lorg/mozilla/javascript/ast/Comment;)V

    goto :goto_c9

    :cond_d9
    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/ast/ScriptNode;->setBaseLineno(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEndLineno(I)V

    return-object v0

    :cond_ed
    :try_start_ed
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
    :try_end_f9
    .catchall {:try_start_ed .. :try_end_f9} :catchall_75

    :goto_f9
    iput-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    goto :goto_fd

    :goto_fc
    throw v0

    :goto_fd
    goto :goto_fc
.end method

.method private parseFunctionBody(ILorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/ast/AstNode;
    .registers 13

    const/16 v0, 0x56

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v0

    const/16 v4, 0xb4

    if-ge v0, v4, :cond_1d

    if-eq p1, v2, :cond_1d

    const-string v0, "msg.no.brace.body"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    :goto_20
    if-ne p1, v2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    iget v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v4, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v4, v2}, Lorg/mozilla/javascript/ast/Block;-><init>(I)V

    iget-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    const/16 v6, 0x57

    if-eqz v0, :cond_68

    :try_start_42
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    new-instance v3, Lorg/mozilla/javascript/ast/ReturnStatement;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v7

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v8

    invoke-direct {v3, v7, v8, p2}, Lorg/mozilla/javascript/ast/ReturnStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v7, 0x19

    invoke-virtual {v3, v7, p2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v4, v7, p2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    if-eqz p1, :cond_64

    const/16 p1, 0x1b

    invoke-virtual {v3, p1, p2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    :cond_64
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/Block;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_c3

    :cond_68
    const/4 p1, 0x1

    :goto_69
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c3

    if-eqz v7, :cond_c3

    if-eq v7, v6, :cond_c3

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_af

    const/16 v8, 0xa2

    if-eq v7, v8, :cond_9e

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    if-eqz p1, :cond_b6

    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8a

    const/4 p1, 0x0

    goto :goto_b6

    :cond_8a
    const-string/jumbo v9, "use strict"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b6

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    invoke-virtual {p2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setInStrictMode(Z)V

    if-nez v5, :cond_b6

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    goto :goto_b6

    :cond_9e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/AstNode;

    goto :goto_b6

    :cond_af
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v7

    :cond_b6
    :goto_b6
    invoke-virtual {v4, v7}, Lorg/mozilla/javascript/ast/Block;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_b9
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_42 .. :try_end_b9} :catch_c3
    .catchall {:try_start_42 .. :try_end_b9} :catchall_ba

    goto :goto_69

    :catchall_ba
    move-exception p1

    iget p2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr p2, v1

    iput p2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    throw p1

    :catch_c3
    :cond_c3
    :goto_c3
    iget p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    if-nez v0, :cond_df

    const-string p2, "msg.no.brace.after.body"

    invoke-direct {p0, v6, p2, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_df

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_df
    sub-int/2addr p1, v2

    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v4
.end method

.method private parseFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;)V
    .registers 10

    const/16 v0, 0x59

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRp(I)V

    return-void

    :cond_16
    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_1c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x54

    const/16 v6, 0x58

    if-eq v4, v5, :cond_7e

    const/16 v5, 0x56

    if-ne v4, v5, :cond_2b

    goto :goto_7e

    :cond_2b
    const/16 v4, 0x27

    const-string v5, "msg.no.parm"

    invoke-direct {p0, v4, v5, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v5

    if-eqz v5, :cond_42

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_42
    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    iget-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v5, :cond_9c

    const-string v5, "eval"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, "arguments"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    :cond_62
    const-string v5, "msg.bad.id.strict"

    invoke-virtual {p0, v5, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    const-string v5, "msg.dup.param.strict"

    invoke-virtual {p0, v5, v4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_76
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_9c

    :cond_7e
    :goto_7e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    if-nez v2, :cond_8f

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_8f
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v5, v7}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    :goto_9c
    const/16 v4, 0x5a

    invoke-direct {p0, v4, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5

    if-nez v5, :cond_1c

    if-eqz v2, :cond_de

    new-instance v3, Lorg/mozilla/javascript/Node;

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/16 v5, 0x7b

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/Node;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {p0, v5, v6, v4}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_b3

    :cond_d9
    const/16 v2, 0x17

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    :cond_de
    const-string v2, "msg.no.paren.after.parms"

    invoke-direct {p0, v0, v2, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRp(I)V

    :cond_f2
    return-void
.end method

.method private peekFlaggedToken()I
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    return v0
.end method

.method private peekToken()I
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    return v0

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_16
    if-eq v1, v3, :cond_1c

    const/16 v5, 0xa2

    if-ne v1, v5, :cond_39

    :cond_1c
    if-ne v1, v3, :cond_28

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v1

    const/4 v4, 0x1

    goto :goto_16

    :cond_28
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v5

    if-eqz v5, :cond_44

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getAndResetCurrentComment()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lorg/mozilla/javascript/Parser;->recordComment(ILjava/lang/String;)V

    :cond_39
    iput v1, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    if-eqz v4, :cond_3f

    const/high16 v2, 0x10000

    :cond_3f
    or-int v0, v1, v2

    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    return v1

    :cond_44
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v1

    goto :goto_16
.end method

.method private peekTokenOrEOL()I
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private peekUntilNonComment(I)I
    .registers 3

    :goto_0
    const/16 v0, 0xa2

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result p1

    goto :goto_0

    :cond_c
    return p1
.end method

.method private plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x57

    if-ne v0, v1, :cond_40

    :cond_c
    const/16 v0, 0x27

    if-ne p2, v0, :cond_40

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p2

    const/16 v0, 0xb4

    if-lt p2, v0, :cond_40

    iget-boolean p2, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    if-nez p2, :cond_23

    const-string p2, "msg.bad.object.init"

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_23
    new-instance p2, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/mozilla/javascript/ast/Name;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>()V

    const/16 v1, 0x1a

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v0

    :cond_40
    const/16 p2, 0x68

    const/4 v0, 0x1

    const-string v1, "msg.no.colon.prop"

    invoke-direct {p0, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    new-instance p2, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {p2}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-object p2
.end method

.method private primaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 7

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekFlaggedToken()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_162

    if-eqz v1, :cond_159

    const/16 v2, 0x18

    if-eq v1, v2, :cond_132

    const/16 v2, 0x54

    if-eq v1, v2, :cond_12a

    const/16 v2, 0x56

    if-eq v1, v2, :cond_122

    const/16 v2, 0x58

    if-eq v1, v2, :cond_11a

    const/16 v2, 0x65

    if-eq v1, v2, :cond_132

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_111

    const/16 v2, 0x80

    if-eq v1, v2, :cond_102

    const/16 v2, 0x94

    if-eq v1, v2, :cond_f7

    const/16 v2, 0x9a

    if-eq v1, v2, :cond_ea

    packed-switch v1, :pswitch_data_16e

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const-string v0, "msg.syntax"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto/16 :goto_165

    :pswitch_3e  #0x2a, 0x2b, 0x2c, 0x2d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v3, Lorg/mozilla/javascript/ast/KeywordLiteral;

    sub-int/2addr v0, v2

    invoke-direct {v3, v2, v0, v1}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    return-object v3

    :pswitch_4e  #0x29
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;

    move-result-object v0

    return-object v0

    :pswitch_56  #0x28
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v1, :cond_70

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberOldOctal()Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "msg.no.old.octal.strict"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_70
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberBinary()Z

    move-result v1

    if-eqz v1, :cond_89

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_89
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberOldOctal()Z

    move-result v1

    if-eqz v1, :cond_a2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a2
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberOctal()Z

    move-result v1

    if-eqz v1, :cond_bb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0o"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_bb
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberHex()Z

    move-result v1

    if-eqz v1, :cond_d4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d4
    new-instance v1, Lorg/mozilla/javascript/ast/NumberLiteral;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getNumber()D

    move-result-wide v4

    invoke-direct {v1, v3, v0, v4, v5}, Lorg/mozilla/javascript/ast/NumberLiteral;-><init>(ILjava/lang/String;D)V

    return-object v1

    :pswitch_e2  #0x27
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->name(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_ea
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->let(ZI)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_f7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->attributeAccess()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_102
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.reserved.id"

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_165

    :cond_111
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    return-object v0

    :cond_11a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parenExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_122
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v0

    return-object v0

    :cond_12a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->arrayLiteral()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_132
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/TokenStream;->readRegExp(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v2, Lorg/mozilla/javascript/ast/RegExpLiteral;

    sub-int/2addr v0, v1

    invoke-direct {v2, v1, v0}, Lorg/mozilla/javascript/ast/RegExpLiteral;-><init>(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/RegExpLiteral;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->readAndClearRegExpFlags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/RegExpLiteral;->setFlags(Ljava/lang/String;)V

    return-object v2

    :cond_159
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const-string v0, "msg.unexpected.eof"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_165

    :cond_162
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    :goto_165
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_16e
    .packed-switch 0x27
        :pswitch_e2  #00000027
        :pswitch_56  #00000028
        :pswitch_4e  #00000029
        :pswitch_3e  #0000002a
        :pswitch_3e  #0000002b
        :pswitch_3e  #0000002c
        :pswitch_3e  #0000002d
    .end packed-switch
.end method

.method private propertyAccess(ILorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .registers 10

    if-nez p2, :cond_5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/16 v3, 0x90

    if-ne p1, v3, :cond_17

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    const/4 v0, 0x4

    :cond_17
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v3

    const-string v4, "msg.no.name.after.dot"

    const/16 v5, 0x27

    if-nez v3, :cond_58

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result p1

    if-eq p1, v5, :cond_48

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v0

    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    invoke-static {p1, v0, v3}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_48

    :cond_45
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_48
    const/4 p1, 0x1

    const/16 v0, 0x21

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    new-instance v0, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {v0, p2, p1, v1}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/Name;I)V

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0

    :cond_58
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v2

    const/16 v3, 0x17

    const/4 v6, -0x1

    if-eq v2, v3, :cond_c2

    if-eq v2, v5, :cond_bd

    const/16 v3, 0x32

    if-eq v2, v3, :cond_ac

    const/16 v3, 0x80

    if-eq v2, v3, :cond_98

    const/16 v3, 0x94

    if-eq v2, v3, :cond_93

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-static {v2}, Lorg/mozilla/javascript/Token;->keywordToName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v4, v2, v3}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    invoke-direct {p0, v6, v0}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_d1

    :cond_8b
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    :cond_93
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->attributeAccess()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_d1

    :cond_98
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v4, v2, v3}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    invoke-direct {p0, v6, v0}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_d1

    :cond_ac
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const-string/jumbo v4, "throw"

    invoke-direct {p0, v3, v4, v2}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    invoke-direct {p0, v6, v0}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_d1

    :cond_bd
    invoke-direct {p0, v6, v0}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_d1

    :cond_c2
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const-string v4, "*"

    invoke-direct {p0, v3, v4, v2}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    invoke-direct {p0, v6, v0}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_d1
    instance-of v2, v0, Lorg/mozilla/javascript/ast/XmlRef;

    if-eqz v2, :cond_db

    new-instance v3, Lorg/mozilla/javascript/ast/XmlMemberGet;

    invoke-direct {v3}, Lorg/mozilla/javascript/ast/XmlMemberGet;-><init>()V

    goto :goto_e0

    :cond_db
    new-instance v3, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {v3}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>()V

    :goto_e0
    if-eqz v2, :cond_e9

    const/16 v2, 0x6d

    if-ne p1, v2, :cond_e9

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    :cond_e9
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/AstNode;->setPosition(I)V

    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    sub-int/2addr v1, p1

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {v3, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v3
.end method

.method private propertyName(II)Lorg/mozilla/javascript/ast/AstNode;
    .registers 12

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    move v1, p1

    goto :goto_9

    :cond_5
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    :goto_9
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/4 v4, 0x1

    invoke-direct {p0, v4, v3}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x91

    invoke-direct {p0, v6, v4}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v5

    const/16 v6, 0x17

    if-eq v5, v6, :cond_45

    const/16 v6, 0x27

    if-eq v5, v6, :cond_40

    const/16 p2, 0x54

    if-eq v5, p2, :cond_3b

    const-string p1, "msg.no.name.after.coloncolon"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    :cond_3b
    invoke-direct {p0, p1, v3, v4}, Lorg/mozilla/javascript/Parser;->xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;

    move-result-object p1

    return-object p1

    :cond_40
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    goto :goto_5a

    :cond_45
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const-string v7, "*"

    invoke-direct {p0, v6, v7, v5}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    const/4 v5, 0x0

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    goto :goto_5a

    :cond_56
    const/4 v4, -0x1

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    :goto_5a
    if-nez v3, :cond_61

    if-nez p2, :cond_61

    if-ne p1, v0, :cond_61

    return-object v5

    :cond_61
    new-instance p2, Lorg/mozilla/javascript/ast/XmlPropRef;

    invoke-static {v5}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p2, v1, v0}, Lorg/mozilla/javascript/ast/XmlPropRef;-><init>(II)V

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ast/XmlRef;->setAtPos(I)V

    invoke-virtual {p2, v3}, Lorg/mozilla/javascript/ast/XmlRef;->setNamespace(Lorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {p2, v4}, Lorg/mozilla/javascript/ast/XmlRef;->setColonPos(I)V

    invoke-virtual {p2, v5}, Lorg/mozilla/javascript/ast/XmlPropRef;->setPropName(Lorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object p2
.end method

.method private recordComment(ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    :cond_b
    new-instance v0, Lorg/mozilla/javascript/ast/Comment;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v1

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v3, v3, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    invoke-direct {v0, v2, v1, v3, p2}, Lorg/mozilla/javascript/ast/Comment;-><init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v1, v1, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    sget-object v2, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    if-ne v1, v2, :cond_42

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingLocalJsDocComments()Z

    move-result v1

    if-eqz v1, :cond_42

    new-instance v1, Lorg/mozilla/javascript/ast/Comment;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v2

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v4, v4, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    invoke-direct {v1, v3, v2, v4, p2}, Lorg/mozilla/javascript/ast/Comment;-><init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :cond_42
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V
    .registers 7

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    if-nez v1, :cond_1e

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    goto :goto_4a

    :cond_1e
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v1, :cond_4a

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v2

    const-string v3, "msg.dup.label"

    if-eqz v2, :cond_3f

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabelByName(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Label;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    invoke-virtual {p0, v3, v2, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_3f
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_4a
    :goto_4a
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->addLabel(Lorg/mozilla/javascript/ast/Label;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private relExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->shiftExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x34

    if-eq v1, v3, :cond_18

    const/16 v3, 0x35

    if-eq v1, v3, :cond_1d

    packed-switch v1, :pswitch_data_2c

    goto :goto_1c

    :cond_18
    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    if-eqz v3, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    :pswitch_1d  #0xe, 0xf, 0x10, 0x11
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->shiftExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_4

    nop

    :pswitch_data_2c
    .packed-switch 0xe
        :pswitch_1d  #0000000e
        :pswitch_1d  #0000000f
        :pswitch_1d  #00000010
        :pswitch_1d  #00000011
    .end packed-switch
.end method

.method private returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;
    .registers 15

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    const-string v1, "msg.bad.yield"

    const/4 v2, 0x4

    if-nez v0, :cond_12

    if-ne p1, v2, :cond_e

    const-string v0, "msg.bad.return"

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_12
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v4, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 v5, 0x0

    const/16 v6, 0xc8

    const/4 v7, 0x1

    const/16 v8, 0x49

    if-ne p1, v8, :cond_39

    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v9}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v9

    if-lt v9, v6, :cond_39

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v9

    const/16 v10, 0x17

    if-ne v9, v10, :cond_39

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v5, 0x1

    :cond_39
    const/4 v9, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_69

    if-eqz v10, :cond_69

    if-eq v10, v7, :cond_69

    if-eq v10, v8, :cond_58

    const/16 v6, 0x53

    if-eq v10, v6, :cond_69

    const/16 v6, 0x55

    if-eq v10, v6, :cond_69

    const/16 v6, 0x57

    if-eq v10, v6, :cond_69

    const/16 v6, 0x59

    if-eq v10, v6, :cond_69

    goto :goto_61

    :cond_58
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v7

    if-ge v7, v6, :cond_61

    goto :goto_69

    :cond_61
    :goto_61
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    invoke-static {v9}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v0

    :cond_69
    :goto_69
    iget v6, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const-string v7, ""

    if-ne p1, v2, :cond_8b

    if-nez v9, :cond_72

    const/4 v2, 0x2

    :cond_72
    or-int p1, v6, v2

    iput p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    new-instance p1, Lorg/mozilla/javascript/ast/ReturnStatement;

    sub-int/2addr v0, v4

    invoke-direct {p1, v4, v0, v9}, Lorg/mozilla/javascript/ast/ReturnStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    iget p2, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const/4 v1, 0x6

    invoke-static {v6, p2, v1}, Lorg/mozilla/javascript/Parser;->nowAllSet(III)Z

    move-result p2

    if-eqz p2, :cond_ae

    const-string p2, "msg.return.inconsistent"

    invoke-virtual {p0, p2, v7, v4, v0}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_ae

    :cond_8b
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result p1

    if-nez p1, :cond_94

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_94
    iget p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    new-instance p1, Lorg/mozilla/javascript/ast/Yield;

    sub-int/2addr v0, v4

    invoke-direct {p1, v4, v0, v9, v5}, Lorg/mozilla/javascript/ast/Yield;-><init>(IILorg/mozilla/javascript/ast/AstNode;Z)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setIsGenerator()V

    if-nez p2, :cond_ae

    new-instance p2, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {p2, p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;)V

    move-object p1, p2

    :cond_ae
    :goto_ae
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result p2

    if-eqz p2, :cond_e8

    iget p2, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const/16 v0, 0xc

    invoke-static {v6, p2, v0}, Lorg/mozilla/javascript/Parser;->nowAllSet(III)Z

    move-result p2

    if-eqz p2, :cond_e8

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast p2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator()Z

    move-result p2

    if-nez p2, :cond_e8

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast p2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object p2

    if-eqz p2, :cond_e3

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v0

    if-nez v0, :cond_d9

    goto :goto_e3

    :cond_d9
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg.generator.returns"

    invoke-virtual {p0, v0, p2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    :cond_e3
    :goto_e3
    const-string p2, "msg.anon.generator.returns"

    invoke-virtual {p0, p2, v7}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    :goto_e8
    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object p1
.end method

.method private saveNameTokenData(ILjava/lang/String;I)V
    .registers 4

    iput p1, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    iput p3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    return-void
.end method

.method private shiftExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->addExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    packed-switch v1, :pswitch_data_20

    goto :goto_1e

    :pswitch_10  #0x12, 0x13, 0x14
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->addExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_4

    :goto_1e
    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x12
        :pswitch_10  #00000012
        :pswitch_10  #00000013
        :pswitch_10  #00000014
    .end packed-switch
.end method

.method private statement()Lorg/mozilla/javascript/ast/AstNode;
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, 0x1

    :try_start_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statementHelper()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-eqz v2, :cond_6b

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->lineBeginningFor(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    instance-of v4, v2, Lorg/mozilla/javascript/ast/EmptyStatement;

    if-eqz v4, :cond_2c

    const-string v4, "msg.extra.trailing.semi"

    goto :goto_2e

    :cond_2c
    const-string v4, "msg.no.side.effects"

    :goto_2e
    const-string v5, ""

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0, v4, v5, v3, v6}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_38
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    const/16 v4, 0xa2

    if-ne v3, v4, :cond_6a

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v4

    if-ne v3, v4, :cond_6a

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_6a
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_5 .. :try_end_6a} :catch_6b

    :cond_6a
    return-object v2

    :catch_6b
    :cond_6b
    :goto_6b
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7e

    if-eqz v2, :cond_7e

    if-eq v2, v1, :cond_7e

    const/16 v3, 0x53

    if-eq v2, v3, :cond_7e

    goto :goto_6b

    :cond_7e
    new-instance v1, Lorg/mozilla/javascript/ast/EmptyStatement;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    invoke-direct {v1, v0, v2}, Lorg/mozilla/javascript/ast/EmptyStatement;-><init>(II)V

    return-object v1
.end method

.method private statementHelper()Lorg/mozilla/javascript/ast/AstNode;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    :cond_d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_125

    const/16 v2, 0x27

    if-eq v0, v2, :cond_11b

    const/16 v2, 0x32

    if-eq v0, v2, :cond_116

    const/16 v2, 0x49

    if-eq v0, v2, :cond_125

    const/16 v2, 0x56

    if-eq v0, v2, :cond_111

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_108

    const/16 v2, 0x71

    if-eq v0, v2, :cond_103

    const/16 v2, 0x73

    if-eq v0, v2, :cond_fe

    const/16 v2, 0x52

    if-eq v0, v2, :cond_f9

    const/16 v2, 0x53

    if-eq v0, v2, :cond_e0

    const/16 v3, 0x9a

    if-eq v0, v3, :cond_d0

    const/16 v2, 0x9b

    const/4 v3, 0x1

    if-eq v0, v2, :cond_bc

    const/16 v2, 0xa1

    if-eq v0, v2, :cond_a5

    const/16 v2, 0xa2

    if-eq v0, v2, :cond_97

    packed-switch v0, :pswitch_data_136

    iget v0, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    new-instance v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    goto/16 :goto_12a

    :pswitch_68  #0x7c
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v0, :cond_71

    const-string v0, "msg.no.with.strict"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_71
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->withStatement()Lorg/mozilla/javascript/ast/WithStatement;

    move-result-object v0

    return-object v0

    :pswitch_76  #0x7a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->continueStatement()Lorg/mozilla/javascript/ast/ContinueStatement;

    move-result-object v1

    goto/16 :goto_12a

    :pswitch_7c  #0x79
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->breakStatement()Lorg/mozilla/javascript/ast/BreakStatement;

    move-result-object v1

    goto/16 :goto_12a

    :pswitch_82  #0x78
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->forLoop()Lorg/mozilla/javascript/ast/Loop;

    move-result-object v0

    return-object v0

    :pswitch_87  #0x77
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->doLoop()Lorg/mozilla/javascript/ast/DoLoop;

    move-result-object v0

    return-object v0

    :pswitch_8c  #0x76
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->whileLoop()Lorg/mozilla/javascript/ast/WhileLoop;

    move-result-object v0

    return-object v0

    :pswitch_91  #0x75
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->defaultXmlNamespace()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    goto/16 :goto_12a

    :cond_97
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    return-object v0

    :cond_a5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v1, Lorg/mozilla/javascript/ast/KeywordLiteral;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v3, v2, v0}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    goto :goto_12a

    :cond_bc
    :pswitch_bc  #0x7b
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v2, v0, v3}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    move-object v1, v0

    goto :goto_12a

    :cond_d0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->letStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    instance-of v0, v1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v0, :cond_df

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    if-ne v0, v2, :cond_df

    goto :goto_12a

    :cond_df
    return-object v1

    :cond_e0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/EmptyStatement;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v0

    invoke-direct {v1, v0, v2}, Lorg/mozilla/javascript/ast/EmptyStatement;-><init>(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v1

    :cond_f9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->tryStatement()Lorg/mozilla/javascript/ast/TryStatement;

    move-result-object v0

    return-object v0

    :cond_fe
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->switchStatement()Lorg/mozilla/javascript/ast/SwitchStatement;

    move-result-object v0

    return-object v0

    :cond_103
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->ifStatement()Lorg/mozilla/javascript/ast/IfStatement;

    move-result-object v0

    return-object v0

    :cond_108
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    return-object v0

    :cond_111
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->block()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_116
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->throwStatement()Lorg/mozilla/javascript/ast/ThrowStatement;

    move-result-object v1

    goto :goto_12a

    :cond_11b
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nameOrLabel()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    instance-of v0, v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v0, :cond_124

    goto :goto_12a

    :cond_124
    return-object v1

    :cond_125
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    :goto_12a
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v1

    :cond_12e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    :pswitch_data_136
    .packed-switch 0x75
        :pswitch_91  #00000075
        :pswitch_8c  #00000076
        :pswitch_87  #00000077
        :pswitch_82  #00000078
        :pswitch_7c  #00000079
        :pswitch_76  #0000007a
        :pswitch_bc  #0000007b
        :pswitch_68  #0000007c
    .end packed-switch
.end method

.method private statements()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0
.end method

.method private statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x56

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_11
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    if-eqz p1, :cond_18

    goto :goto_1d

    :cond_18
    new-instance p1, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/ast/Block;-><init>(I)V

    :goto_1d
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_24
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    if-lez v1, :cond_36

    const/16 v2, 0x57

    if-eq v1, v2, :cond_36

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->addChild(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_24

    :cond_36
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object p1
.end method

.method private switchStatement()Lorg/mozilla/javascript/ast/SwitchStatement;
    .registers 15

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x73

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/SwitchStatement;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/SwitchStatement;-><init>(I)V

    const/16 v2, 0x58

    const-string v3, "msg.no.paren.switch"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/SwitchStatement;->setLp(I)V

    :cond_28
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/SwitchStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->enterSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)V

    const/16 v2, 0x59

    :try_start_3b
    const-string v3, "msg.no.paren.after.switch"

    invoke-direct {p0, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/SwitchStatement;->setRp(I)V

    :cond_4b
    const/16 v2, 0x56

    const-string v3, "msg.no.brace.switch"

    invoke-direct {p0, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    const/4 v2, 0x0

    :goto_53
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v3

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v7, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I
    :try_end_5d
    .catchall {:try_start_3b .. :try_end_5d} :catchall_fe

    const/4 v8, 0x0

    const/16 v9, 0x57

    if-eq v3, v9, :cond_f4

    const/16 v5, 0xa2

    if-eq v3, v5, :cond_e2

    const-string v10, "msg.no.colon.case"

    const/16 v11, 0x68

    const/16 v12, 0x75

    const/16 v13, 0x74

    if-eq v3, v13, :cond_85

    if-eq v3, v12, :cond_79

    :try_start_72
    const-string v0, "msg.bad.switch"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto/16 :goto_fa

    :cond_79
    if-eqz v2, :cond_80

    const-string v2, "msg.double.switch.default"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_80
    invoke-direct {p0, v11, v10, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    const/4 v2, 0x1

    goto :goto_8c

    :cond_85
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    invoke-direct {p0, v11, v10, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    :goto_8c
    new-instance v3, Lorg/mozilla/javascript/ast/SwitchCase;

    invoke-direct {v3, v6}, Lorg/mozilla/javascript/ast/SwitchCase;-><init>(I)V

    invoke-virtual {v3, v8}, Lorg/mozilla/javascript/ast/SwitchCase;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v6, v0

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v3, v7}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_9f
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    if-eq v6, v9, :cond_dd

    if-eq v6, v13, :cond_dd

    if-eq v6, v12, :cond_dd

    if-eqz v6, :cond_dd

    if-ne v6, v5, :cond_d5

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    if-nez v7, :cond_ce

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v7

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v8

    if-ne v7, v8, :cond_ce

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_d1

    :cond_ce
    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/SwitchCase;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    :goto_d1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_9f

    :cond_d5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/ast/SwitchCase;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_9f

    :cond_dd
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/SwitchStatement;->addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V

    goto/16 :goto_53

    :cond_e2
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->addChild(Lorg/mozilla/javascript/ast/AstNode;)V

    goto/16 :goto_53

    :cond_f4
    iget v2, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_fa
    .catchall {:try_start_72 .. :try_end_fa} :catchall_fe

    :goto_fa
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitSwitch()V

    return-object v1

    :catchall_fe
    move-exception v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitSwitch()V

    goto :goto_104

    :goto_103
    throw v0

    :goto_104
    goto :goto_103
.end method

.method private throwStatement()Lorg/mozilla/javascript/ast/ThrowStatement;
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    const-string v2, "msg.bad.throw.eol"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    new-instance v3, Lorg/mozilla/javascript/ast/ThrowStatement;

    invoke-direct {v3, v1, v2}, Lorg/mozilla/javascript/ast/ThrowStatement;-><init>(ILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v3
.end method

.method private tryStatement()Lorg/mozilla/javascript/ast/TryStatement;
    .registers 20

    move-object/from16 v0, p0

    iget v1, v0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v2, 0x52

    if-eq v1, v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    iget-object v2, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    new-instance v4, Lorg/mozilla/javascript/ast/TryStatement;

    invoke-direct {v4, v3}, Lorg/mozilla/javascript/ast/TryStatement;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0xa2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_3d

    iget-object v5, v0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    :cond_3d
    const/16 v6, 0x56

    if-eq v5, v6, :cond_46

    const-string v5, "msg.no.brace.try"

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_46
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v10

    const/16 v11, 0x7d

    if-ne v10, v11, :cond_131

    const/4 v10, 0x0

    :goto_58
    invoke-direct {v0, v11, v7}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v15

    if-eqz v15, :cond_12c

    iget-object v8, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->lineno:I

    if-eqz v9, :cond_69

    const-string v15, "msg.catch.unreachable"

    invoke-virtual {v0, v15}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_69
    iget-object v15, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v15, v15, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v11, 0x58

    const-string v13, "msg.no.paren.catch"

    invoke-direct {v0, v11, v13, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_7c

    iget-object v11, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_7d

    :cond_7c
    const/4 v11, -0x1

    :goto_7d
    const/16 v13, 0x27

    const-string v12, "msg.bad.catchcond"

    invoke-direct {v0, v13, v12, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v14

    if-eqz v14, :cond_91

    invoke-virtual {v13, v14}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_91
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v14

    iget-boolean v6, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v6, :cond_ae

    const-string v6, "eval"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a9

    const-string v6, "arguments"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    :cond_a9
    const-string v6, "msg.bad.id.strict"

    invoke-virtual {v0, v6, v14}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    const/16 v6, 0x71

    invoke-direct {v0, v6, v7}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v6

    if-eqz v6, :cond_c1

    iget-object v6, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v14

    move/from16 v17, v9

    goto :goto_c5

    :cond_c1
    const/4 v6, -0x1

    const/4 v14, 0x0

    const/16 v17, 0x1

    :goto_c5
    const/16 v9, 0x59

    invoke-direct {v0, v9, v12, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_d2

    iget-object v9, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_d3

    :cond_d2
    const/4 v9, -0x1

    :goto_d3
    const-string v12, "msg.no.brace.catchblock"

    move-object/from16 v18, v1

    const/16 v1, 0x56

    invoke-direct {v0, v1, v12, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->statements()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v12

    check-cast v12, Lorg/mozilla/javascript/ast/Block;

    invoke-static {v12}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v16

    new-instance v1, Lorg/mozilla/javascript/ast/CatchClause;

    invoke-direct {v1, v15}, Lorg/mozilla/javascript/ast/CatchClause;-><init>(I)V

    invoke-virtual {v1, v13}, Lorg/mozilla/javascript/ast/CatchClause;->setVarName(Lorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {v1, v14}, Lorg/mozilla/javascript/ast/CatchClause;->setCatchCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/ast/CatchClause;->setBody(Lorg/mozilla/javascript/ast/Block;)V

    const/4 v12, -0x1

    if-eq v6, v12, :cond_fb

    sub-int/2addr v6, v15

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/CatchClause;->setIfPosition(I)V

    :cond_fb
    invoke-virtual {v1, v11, v9}, Lorg/mozilla/javascript/ast/CatchClause;->setParens(II)V

    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    const/16 v6, 0x57

    const-string v8, "msg.no.brace.after.body"

    invoke-direct {v0, v6, v8, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_111

    iget-object v6, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v8, v6

    goto :goto_113

    :cond_111
    move/from16 v8, v16

    :goto_113
    sub-int v6, v8, v15

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    if-nez v10, :cond_11f

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_11f
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v9, v17

    move-object/from16 v1, v18

    const/16 v6, 0x56

    const/16 v11, 0x7d

    goto/16 :goto_58

    :cond_12c
    move-object/from16 v18, v1

    const/16 v1, 0x7e

    goto :goto_13d

    :cond_131
    move-object/from16 v18, v1

    const/16 v1, 0x7e

    if-eq v10, v1, :cond_13c

    const-string v6, "msg.try.no.catchfinally"

    invoke-direct {v0, v1, v6, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    :cond_13c
    const/4 v10, 0x0

    :goto_13d
    invoke-direct {v0, v1, v7}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_150

    iget-object v1, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v12, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    invoke-static {v13}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    goto :goto_152

    :cond_150
    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_152
    sub-int/2addr v8, v3

    invoke-virtual {v4, v8}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/TryStatement;->setTryBlock(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v4, v10}, Lorg/mozilla/javascript/ast/TryStatement;->setCatchClauses(Ljava/util/List;)V

    invoke-virtual {v4, v13}, Lorg/mozilla/javascript/ast/TryStatement;->setFinallyBlock(Lorg/mozilla/javascript/ast/AstNode;)V

    const/4 v1, -0x1

    if-eq v12, v1, :cond_166

    sub-int/2addr v12, v3

    invoke-virtual {v4, v12}, Lorg/mozilla/javascript/ast/TryStatement;->setFinallyPosition(I)V

    :cond_166
    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    if-eqz v18, :cond_170

    move-object/from16 v1, v18

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_170
    return-object v4
.end method

.method private unaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .registers 7

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->peekUntilNonComment(I)I

    move-result v0

    :cond_f
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e0

    const/16 v2, 0xe

    const/16 v3, 0x6c

    const/16 v4, 0x6b

    const/4 v5, 0x1

    if-eq v0, v2, :cond_ac

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_98

    const/16 v2, 0x15

    if-eq v0, v2, :cond_82

    const/16 v2, 0x16

    if-eq v0, v2, :cond_6c

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_98

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_98

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_58

    const/16 v2, 0x20

    if-eq v0, v2, :cond_98

    if-eq v0, v4, :cond_41

    if-eq v0, v3, :cond_41

    goto/16 :goto_c0

    :cond_41
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->checkBadIncDec(Lorg/mozilla/javascript/ast/UnaryExpression;)V

    return-object v2

    :cond_58
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v2

    :cond_6c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v0, Lorg/mozilla/javascript/ast/UnaryExpression;

    const/16 v2, 0x1d

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0

    :cond_82
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v0, Lorg/mozilla/javascript/ast/UnaryExpression;

    const/16 v2, 0x1c

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0

    :cond_98
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v2

    :cond_ac
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->xmlInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_c0
    :goto_c0
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v2

    if-eq v2, v4, :cond_cd

    if-eq v2, v3, :cond_cd

    return-object v0

    :cond_cd
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v3, v2, v4, v0, v5}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Z)V

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->checkBadIncDec(Lorg/mozilla/javascript/ast/UnaryExpression;)V

    return-object v3

    :cond_e0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0
.end method

.method private variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;
    .registers 15

    new-instance v0, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/ast/VariableDeclaration;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setType(I)Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_18
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v4, 0x54

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_75

    const/16 v4, 0x56

    if-ne v1, v4, :cond_2d

    goto :goto_75

    :cond_2d
    const/16 v1, 0x27

    const-string v4, "msg.bad.var"

    invoke-direct {p0, v1, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v4, :cond_66

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "eval"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v7}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "arguments"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    :cond_61
    const-string v7, "msg.bad.id.strict"

    invoke-virtual {p0, v7, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v7, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    invoke-virtual {p0, p1, v4, v7}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    move v4, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_8d

    :cond_75
    :goto_75
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    instance-of v4, v1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-nez v4, :cond_88

    sub-int v4, v2, v3

    const-string v7, "msg.bad.assign.left"

    invoke-virtual {p0, v7, v3, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_88
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    move v4, v2

    move-object v2, v6

    :goto_8d
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v8

    const/16 v9, 0x5b

    invoke-direct {p0, v9, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v9

    if-eqz v9, :cond_a5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    :cond_a5
    new-instance v9, Lorg/mozilla/javascript/ast/VariableInitializer;

    sub-int v10, v4, v3

    invoke-direct {v9, v3, v10}, Lorg/mozilla/javascript/ast/VariableInitializer;-><init>(II)V

    if-eqz v1, :cond_bd

    if-nez v6, :cond_b9

    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    if-nez v2, :cond_b9

    const-string v2, "msg.destruct.assign.no.init"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_b9
    invoke-virtual {v9, v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_c0

    :cond_bd
    invoke-virtual {v9, v2}, Lorg/mozilla/javascript/ast/VariableInitializer;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    :goto_c0
    invoke-virtual {v9, v6}, Lorg/mozilla/javascript/ast/VariableInitializer;->setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v9, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v9, v8}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    invoke-virtual {v9, v7}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/ast/VariableDeclaration;->addVariable(Lorg/mozilla/javascript/ast/VariableInitializer;)V

    const/16 v1, 0x5a

    invoke-direct {p0, v1, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-nez v1, :cond_18

    sub-int/2addr v4, p2

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setIsStatement(Z)V

    return-object v0
.end method

.method private warnMissingSemi(II)V
    .registers 13

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1, p2, v0}, Lorg/mozilla/javascript/TokenStream;->getLine(I[I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    aget v1, v0, v2

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_22
    move v5, p1

    if-eqz v8, :cond_35

    sub-int v6, p2, v5

    const/4 p1, 0x0

    aget v7, v0, p1

    aget v9, v0, v2

    const-string v3, "msg.missing.semi"

    const-string v4, ""

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_3d

    :cond_35
    sub-int/2addr p2, v5

    const-string p1, "msg.missing.semi"

    const-string v0, ""

    invoke-virtual {p0, p1, v0, v5, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private warnTrailingComma(ILjava/util/List;I)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getWarnTrailingComma()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    :cond_19
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/Parser;->lineBeginningFor(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p3, p1

    const-string p2, "msg.extra.trailing.comma"

    invoke-virtual {p0, p2, p1, p3}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;II)V

    :cond_27
    return-void
.end method

.method private whileLoop()Lorg/mozilla/javascript/ast/WhileLoop;
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x76

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/WhileLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/WhileLoop;-><init>(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V

    :try_start_1f
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v2

    iget-object v3, v2, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/WhileLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    iget v3, v2, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v3, v0

    iget v2, v2, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_44

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    return-object v1

    :catchall_44
    move-exception v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    throw v0
.end method

.method private withStatement()Lorg/mozilla/javascript/ast/WithStatement;
    .registers 10

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x58

    const-string v4, "msg.no.paren.with"

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_27

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_28

    :cond_27
    const/4 v3, -0x1

    :goto_28
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    const/16 v7, 0x59

    const-string v8, "msg.no.paren.after.with"

    invoke-direct {p0, v7, v8, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    :cond_3a
    new-instance v5, Lorg/mozilla/javascript/ast/WithStatement;

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/ast/WithStatement;-><init>(I)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/WithStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v5, v7}, Lorg/mozilla/javascript/ast/WithStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v5, v3, v4}, Lorg/mozilla/javascript/ast/WithStatement;->setParens(II)V

    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v5
.end method

.method private xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;
    .registers 13

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    move v2, p1

    goto :goto_a

    :cond_9
    move v2, v0

    :goto_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    const/16 v5, 0x55

    const/4 v6, 0x1

    const-string v7, "msg.no.bracket.index"

    invoke-direct {p0, v5, v7, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v8, v4

    move v4, v1

    move v1, v8

    :cond_26
    new-instance v5, Lorg/mozilla/javascript/ast/XmlElemRef;

    sub-int/2addr v4, v2

    invoke-direct {v5, v2, v4}, Lorg/mozilla/javascript/ast/XmlElemRef;-><init>(II)V

    invoke-virtual {v5, p2}, Lorg/mozilla/javascript/ast/XmlRef;->setNamespace(Lorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {v5, p3}, Lorg/mozilla/javascript/ast/XmlRef;->setColonPos(I)V

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/XmlRef;->setAtPos(I)V

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/XmlElemRef;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v5, v0, v1}, Lorg/mozilla/javascript/ast/XmlElemRef;->setBrackets(II)V

    return-object v5
.end method

.method private xmlInitializer()Lorg/mozilla/javascript/ast/AstNode;
    .registers 10

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getFirstXMLToken()I

    move-result v0

    const/16 v2, 0x95

    const/16 v3, 0x92

    const-string v4, "msg.syntax"

    if-eq v0, v3, :cond_23

    if-eq v0, v2, :cond_23

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v5, Lorg/mozilla/javascript/ast/XmlLiteral;

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/ast/XmlLiteral;-><init>(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_2f
    if-eq v0, v3, :cond_4c

    if-eq v0, v2, :cond_3b

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    :cond_3b
    new-instance v0, Lorg/mozilla/javascript/ast/XmlString;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/ast/XmlString;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    return-object v5

    :cond_4c
    new-instance v0, Lorg/mozilla/javascript/ast/XmlString;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lorg/mozilla/javascript/ast/XmlString;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    const/16 v0, 0x56

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    const/16 v7, 0x57

    if-ne v6, v7, :cond_79

    new-instance v6, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v8, v0

    invoke-direct {v6, v0, v8}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    goto :goto_7d

    :cond_79
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    :goto_7d
    invoke-direct {p0, v7, v4, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    new-instance v1, Lorg/mozilla/javascript/ast/XmlExpression;

    invoke-direct {v1, v0, v6}, Lorg/mozilla/javascript/ast/XmlExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;)V

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->isXMLAttribute()Z

    move-result v6

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/XmlExpression;->setIsXmlAttribute(Z)V

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v0

    goto :goto_2f
.end method


# virtual methods
.method addError(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;II)V

    return-void
.end method

.method addError(Ljava/lang/String;I)V
    .registers 5

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addError(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addError(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13

    iget v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_14

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v3, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_38

    :cond_14
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v1

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->getOffset()I

    move-result p2

    move-object v6, p1

    move v7, p2

    move v5, v1

    goto :goto_31

    :cond_2c
    const-string p1, ""

    move-object v6, p1

    const/4 v5, 0x1

    const/4 v7, 0x1

    :goto_31
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_38
    return-void
.end method

.method addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    const/4 v1, -0x1

    if-eqz v0, :cond_b

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_b
    return-void
.end method

.method addWarning(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addWarning(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    const/4 v1, -0x1

    if-eqz v0, :cond_b

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method addWarning(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->reportWarningAsError()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_33

    :cond_10
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_1a

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v1, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_33

    :cond_1a
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v3

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getOffset()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_33
    return-void
.end method

.method protected checkActivationName(Ljava/lang/String;I)V
    .registers 7

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const-string v1, "arguments"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1e

    :goto_1c
    const/4 v0, 0x1

    goto :goto_4a

    :cond_1e
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getActivationNames()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getActivationNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_1c

    :cond_33
    const-string v1, "length"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const/16 p1, 0x21

    if-ne p2, p1, :cond_4a

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    const/16 p2, 0x78

    if-ne p1, p2, :cond_4a

    goto :goto_1c

    :cond_4a
    :goto_4a
    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    :cond_4f
    return-void
.end method

.method protected checkMutableReference(Lorg/mozilla/javascript/Node;)V
    .registers 4

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_10

    const-string p1, "msg.bad.assign.left"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object p1
.end method

.method protected createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 4

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    if-eqz p3, :cond_c

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_c
    return-object p2
.end method

.method protected createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .registers 3

    const/16 v0, 0x27

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method protected createNumber(D)Lorg/mozilla/javascript/Node;
    .registers 3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method protected createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0
.end method

.method defineSymbol(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    return-void
.end method

.method defineSymbol(ILjava/lang/String;Z)V
    .registers 13

    if-nez p2, :cond_e

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_e
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Symbol;->getDeclType()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, -0x1

    :goto_24
    const-string v3, "msg.var.redecl"

    const/16 v4, 0x6e

    const/16 v5, 0x9a

    const/16 v6, 0x7b

    const/16 v7, 0x9b

    if-eqz v1, :cond_52

    if-eq v2, v7, :cond_3a

    if-eq p1, v7, :cond_3a

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v0, v8, :cond_52

    if-ne v2, v5, :cond_52

    :cond_3a
    if-ne v2, v7, :cond_3f

    const-string v3, "msg.const.redecl"

    goto :goto_4e

    :cond_3f
    if-ne v2, v5, :cond_44

    const-string v3, "msg.let.redecl"

    goto :goto_4e

    :cond_44
    if-ne v2, v6, :cond_47

    goto :goto_4e

    :cond_47
    if-ne v2, v4, :cond_4c

    const-string v3, "msg.fn.redecl"

    goto :goto_4e

    :cond_4c
    const-string v3, "msg.parm.redecl"

    :goto_4e
    invoke-virtual {p0, v3, p2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_52
    const/16 v0, 0x58

    if-eq p1, v0, :cond_a2

    if-eq p1, v4, :cond_87

    if-eq p1, v6, :cond_87

    if-eq p1, v5, :cond_64

    if-ne p1, v7, :cond_5f

    goto :goto_87

    :cond_5f
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_64
    if-nez p3, :cond_7c

    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p3

    const/16 v0, 0x71

    if-eq p3, v0, :cond_76

    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    instance-of p3, p3, Lorg/mozilla/javascript/ast/Loop;

    if-eqz p3, :cond_7c

    :cond_76
    const-string p1, "msg.let.decl.not.in.block"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return-void

    :cond_7c
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    return-void

    :cond_87
    :goto_87
    if-eqz v1, :cond_97

    if-ne v2, v6, :cond_8f

    invoke-virtual {p0, v3, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :cond_8f
    if-ne v2, v0, :cond_a1

    const-string p1, "msg.var.hides.arg"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :cond_97
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    :cond_a1
    :goto_a1
    return-void

    :cond_a2
    if-eqz v1, :cond_a9

    const-string p3, "msg.dup.parms"

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    return-void
.end method

.method destructuringArray(Lorg/mozilla/javascript/ast/ArrayLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z
    .registers 16

    const/16 v0, 0x9b

    if-ne p2, v0, :cond_7

    const/16 v0, 0x9c

    goto :goto_9

    :cond_7
    const/16 v0, 0x8

    :goto_9
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x81

    if-ne v6, v7, :cond_2c

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_2c
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x24

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    int-to-double v8, v4

    invoke-virtual {p0, v8, v9}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_61

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x31

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v5, v8}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {v6, v0, v7, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p4, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v3, -0x1

    if-eq p2, v3, :cond_6e

    invoke-virtual {p0, p2, v5, v2}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_61
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v5, v3, v6}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_6e
    :goto_6e
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_15

    :cond_72
    return v3
.end method

.method destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .registers 15

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v0

    const/16 v1, 0x9f

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x27

    invoke-virtual {p0, v2, p4, p3}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    const/16 v2, 0x9a

    invoke-direct {v1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :try_start_1a
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/4 p3, 0x1

    invoke-virtual {p0, v2, p4, p3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_91

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x5a

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x21

    const-string v5, "msg.bad.assign.left"

    if-eq v3, v4, :cond_67

    const/16 v4, 0x24

    if-eq v3, v4, :cond_67

    const/16 v2, 0x42

    if-eq v3, v2, :cond_5a

    const/16 v2, 0x43

    if-eq v3, v2, :cond_4d

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_80

    :cond_4d
    move-object v4, p2

    check-cast v4, Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-object v3, p0

    move v5, p1

    move-object v6, p4

    move-object v7, v1

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/Parser;->destructuringObject(Lorg/mozilla/javascript/ast/ObjectLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z

    move-result p3

    goto :goto_80

    :cond_5a
    move-object v4, p2

    check-cast v4, Lorg/mozilla/javascript/ast/ArrayLiteral;

    move-object v3, p0

    move v5, p1

    move-object v6, p4

    move-object v7, v1

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/Parser;->destructuringArray(Lorg/mozilla/javascript/ast/ArrayLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z

    move-result p3

    goto :goto_80

    :cond_67
    const/16 v3, 0x7b

    if-eq p1, v3, :cond_72

    if-eq p1, v2, :cond_72

    const/16 v2, 0x9b

    if-eq p1, v2, :cond_72

    goto :goto_75

    :cond_72
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :goto_75
    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_80
    if-eqz p3, :cond_8b

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_8b
    const/16 p1, 0x16

    invoke-virtual {v0, p1, v9}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object v0

    :catchall_91
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method destructuringObject(Lorg/mozilla/javascript/ast/ObjectLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z
    .registers 15

    const/16 v0, 0x9b

    if-ne p2, v0, :cond_7

    const/16 v0, 0x9c

    goto :goto_9

    :cond_7
    const/16 v0, 0x8

    :goto_9
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/ObjectProperty;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-eqz v4, :cond_27

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    instance-of v6, v5, Lorg/mozilla/javascript/ast/Name;

    const/16 v7, 0x21

    if-eqz v6, :cond_46

    check-cast v5, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_79

    :cond_46
    instance-of v6, v5, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v6, :cond_5e

    check-cast v5, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_79

    :cond_5e
    instance-of v6, v5, Lorg/mozilla/javascript/ast/NumberLiteral;

    if-eqz v6, :cond_b7

    check-cast v5, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v5

    double-to-int v5, v5

    int-to-double v5, v5

    invoke-virtual {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v5

    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x24

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_79
    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_a7

    check-cast v3, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x31

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v3, v7}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-direct {v4, v0, v5, v6}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p4, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v4, -0x1

    if-eq p2, v4, :cond_b4

    invoke-virtual {p0, p2, v3, v2}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    :cond_a7
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v6, v4}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_b4
    :goto_b4
    const/4 v3, 0x0

    goto/16 :goto_14

    :cond_b7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_bc
    return v3
.end method

.method public eof()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->eof()Z

    move-result v0

    return v0
.end method

.method public inUseStrictDirective()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    return v0
.end method

.method insideFunction()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method lookupMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p2, :cond_7

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/ast/DestructuringForm;->setIsDestructuring(Z)V

    goto :goto_18

    :cond_b
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_18

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public parse(Ljava/io/Reader;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    .registers 6

    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->readReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p1

    return-object p1

    :cond_15
    const/4 v0, 0x1

    :try_start_16
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    new-instance p2, Lorg/mozilla/javascript/TokenStream;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1, p3}, Lorg/mozilla/javascript/TokenStream;-><init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parse()Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_27

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    return-object p1

    :catchall_27
    move-exception p1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    throw p1

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "parser reused"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    .registers 5

    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    if-nez v0, :cond_2f

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p2}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceChars:[C

    :cond_14
    new-instance p2, Lorg/mozilla/javascript/TokenStream;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1, p3}, Lorg/mozilla/javascript/TokenStream;-><init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    const/4 p1, 0x1

    :try_start_1d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parse()Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_26
    .catchall {:try_start_1d .. :try_end_21} :catchall_24

    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    return-object p2

    :catchall_24
    move-exception p2

    goto :goto_2c

    :catch_26
    :try_start_26
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    throw p2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_24

    :goto_2c
    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    throw p2

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "parser reused"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method popScope()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-void
.end method

.method pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    .registers 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-eq v0, v1, :cond_13

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Scope;->addChildScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_13
    :goto_13
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-void
.end method

.method protected removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .registers 3

    :goto_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    goto :goto_0

    :cond_b
    return-object p1
.end method

.method reportError(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method reportError(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method reportError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_11

    :cond_9
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_11
    return-void
.end method

.method reportError(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors()Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    :cond_c
    new-instance p1, Lorg/mozilla/javascript/Parser$ParserException;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/Parser$ParserException;-><init>(Lorg/mozilla/javascript/Parser$1;)V

    throw p1
.end method

.method public setDefaultUseStrictDirective(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->defaultUseStrictDirective:Z

    return-void
.end method

.method protected setIsGenerator()V
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsGenerator()V

    :cond_d
    return-void
.end method

.method protected setRequiresActivation()V
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    :cond_d
    return-void
.end method

.method protected simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_55

    const/16 v2, 0x24

    if-eq v0, v2, :cond_55

    const/16 v1, 0x27

    if-eq v0, v1, :cond_28

    const/16 v1, 0x44

    if-ne v0, v1, :cond_23

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->checkMutableReference(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x45

    invoke-direct {v0, v1, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_23
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_28
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v1, :cond_48

    const-string v1, "eval"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "arguments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    :cond_43
    const-string v1, "msg.bad.id.strict"

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_55
    instance-of v2, p1, Lorg/mozilla/javascript/ast/PropertyGet;

    if-eqz v2, :cond_64

    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    goto :goto_7b

    :cond_64
    instance-of v2, p1, Lorg/mozilla/javascript/ast/ElementGet;

    if-eqz v2, :cond_73

    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    goto :goto_7b

    :cond_73
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    :goto_7b
    if-ne v0, v1, :cond_85

    const/16 v0, 0x23

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto :goto_87

    :cond_85
    const/16 v0, 0x25

    :goto_87
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, v0, v2, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v1
.end method
