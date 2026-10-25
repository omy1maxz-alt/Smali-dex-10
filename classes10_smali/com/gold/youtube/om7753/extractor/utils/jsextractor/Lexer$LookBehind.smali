.class Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;
.super Ljava/lang/Object;
.source "Lexer.java"


# instance fields
.field private final list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    return-void
.end method


# virtual methods
.method one()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method oneIs(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)Z
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne v0, p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method push(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;)V
    .registers 6

    move-object v0, p1

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    aput-object v0, v3, v1

    move-object v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method three()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method threeIs(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)Z
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne v0, p1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method two()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method twoIs(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)Z
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne v0, p1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method
