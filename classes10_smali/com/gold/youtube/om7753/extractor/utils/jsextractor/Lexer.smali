.class public Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# instance fields
.field private final braceStack:Ljava/util/Stack;

.field private final lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

.field private final parenStack:Ljava/util/Stack;

.field private final stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method checkForExpression(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)Z
    .registers 3

    iget-boolean v0, p1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->isOp:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RETURN:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->CASE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public getNextToken()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->nextToken()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    move-result-object v0

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->DIV:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne v0, v1, :cond_1b

    :cond_e
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->isRegexStart()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    invoke-virtual {v1, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->readRegExp(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->REGEXP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    :cond_1b
    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v2, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v3, v3, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    invoke-direct {v1, v0, v2, v3}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;-><init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;II)V

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->keepBooks(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;)V

    return-object v1
.end method

.method handleCloseBraceBooks(I)V
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RC:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v3, v3, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;

    invoke-direct {v1, v2, v3, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;-><init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;ILcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;)V

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;)V

    return-void

    :cond_21
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmatched closing brace at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCloseParenBooks(I)V
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v3, v3, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;

    invoke-direct {v1, v2, v3, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;-><init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;ILcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;)V

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;)V

    return-void

    :cond_21
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmatched closing paren at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleOpenBraceBooks()V
    .registers 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_5d

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$1;->$SwitchMap$com$gold$youtube$om7753$extractor$utils$jsextractor$Token:[I

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    iget-object v2, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_9a

    :pswitch_1e  #0x3, 0x4
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iget-boolean v1, v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->isOp:Z

    goto :goto_5b

    :pswitch_29  #0x7, 0x8, 0x9
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget v1, v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->lineno:I

    iget-object v4, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v4, v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    if-eq v1, v4, :cond_40

    move v2, v3

    :cond_40
    move v0, v2

    goto :goto_5d

    :pswitch_42  #0x6
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;

    iget-boolean v1, v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    if-eqz v1, :cond_57

    move v2, v3

    :cond_57
    move v0, v2

    goto :goto_5d

    :pswitch_59  #0x1, 0x2, 0x5
    const/4 v0, 0x0

    goto :goto_5d

    :goto_5b
    xor-int/2addr v1, v3

    move v0, v1

    :cond_5d
    :goto_5d
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    instance-of v2, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    iget-object v2, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne v2, v3, :cond_7e

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    iget-object v1, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;

    :cond_7e
    new-instance v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;

    invoke-direct {v2, v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;-><init>(ZLcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;)V

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LC:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iget-object v6, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v6, v6, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    invoke-direct {v4, v5, v6, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;-><init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;ILcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;)V

    invoke-virtual {v3, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;)V

    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_59  #00000001
        :pswitch_59  #00000002
        :pswitch_1e  #00000003
        :pswitch_1e  #00000004
        :pswitch_59  #00000005
        :pswitch_42  #00000006
        :pswitch_29  #00000007
        :pswitch_29  #00000008
        :pswitch_29  #00000009
    .end packed-switch
.end method

.method handleOpenParenBooks()V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->FUNCTION:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->oneIs(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->checkForExpression(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)Z

    move-result v1

    if-eqz v1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    move v0, v1

    goto :goto_4c

    :cond_28
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->FUNCTION:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    invoke-virtual {v1, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->twoIs(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->three()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->three()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    invoke-virtual {p0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->checkForExpression(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    move v0, v1

    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->isConditional()Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_64

    :cond_63
    move v2, v3

    :goto_64
    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;

    invoke-direct {v1, v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;-><init>(ZZ)V

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iget-object v6, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v6, v6, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    invoke-direct {v4, v5, v6, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;-><init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;ILcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;)V

    invoke-virtual {v3, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;)V

    return-void
.end method

.method public isBalanced()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isRegexStart()Z
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    iget-object v0, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iget-boolean v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->isKeyw:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->THIS:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-eq v0, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v3

    :goto_1c
    return v1

    :cond_1d
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_38

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    instance-of v2, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    if-eqz v2, :cond_38

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;

    iget-boolean v1, v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;->conditional:Z

    return v1

    :cond_38
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RC:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_64

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    instance-of v2, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    iget-object v4, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;

    iget-boolean v4, v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    if-eqz v4, :cond_63

    iget-object v3, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;

    iget-object v3, v3, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;->paren:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;

    if-eqz v3, :cond_62

    iget-object v3, v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;

    iget-object v3, v3, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;->paren:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;

    iget-boolean v3, v3, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;->funcExpr:Z

    xor-int/2addr v1, v3

    return v1

    :cond_62
    return v1

    :cond_63
    return v3

    :cond_64
    iget-boolean v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->isPunct:Z

    if-eqz v2, :cond_6f

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RB:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-eq v0, v2, :cond_6d

    goto :goto_6e

    :cond_6d
    move v1, v3

    :goto_6e
    return v1

    :cond_6f
    return v3

    :cond_70
    return v1
.end method

.method keepBooks(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;)V
    .registers 6

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iget-boolean v0, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->isPunct:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$1;->$SwitchMap$com$gold$youtube$om7753$extractor$utils$jsextractor$Token:[I

    iget-object v1, p1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    goto :goto_28

    :pswitch_14  #0x4
    iget v0, p1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->start:I

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->handleCloseBraceBooks(I)V

    return-void

    :pswitch_1a  #0x3
    iget v0, p1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->start:I

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->handleCloseParenBooks(I)V

    return-void

    :pswitch_20  #0x2
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->handleOpenBraceBooks()V

    return-void

    :pswitch_24  #0x1
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->handleOpenParenBooks()V

    return-void

    :cond_28
    :goto_28
    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->COMMENT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->lastThree:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    iget-object v2, p1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->stream:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;

    iget v3, v3, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    invoke-direct {v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;-><init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;I)V

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;)V

    :cond_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_20  #00000002
        :pswitch_1a  #00000003
        :pswitch_14  #00000004
    .end packed-switch
.end method
