.class public final Lcom/gold/youtube/om7753/extractor/utils/jsextractor/JavaScriptExtractor;
.super Ljava/lang/Object;
.source "JavaScriptExtractor.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matchToClosingBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;

    invoke-direct {v2, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->getNextToken()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;

    move-result-object v4

    iget-object v5, v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LC:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne v5, v6, :cond_21

    const/4 v3, 0x1

    goto :goto_35

    :cond_21
    if-eqz v3, :cond_31

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer;->isBalanced()Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v6, 0x0

    iget v7, v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->end:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_31
    sget-object v6, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->EOF:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-eq v5, v6, :cond_36

    :goto_35
    goto :goto_15

    :cond_36
    new-instance v6, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v7, "Could not find matching braces"

    invoke-direct {v6, v7}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3e
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Start not found"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
