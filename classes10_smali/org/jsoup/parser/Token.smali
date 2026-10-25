.class abstract Lorg/jsoup/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field private endPos:I

.field private startPos:I

.field type:Lorg/jsoup/parser/Token$TokenType;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/parser/Token$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/parser/Token;-><init>()V

    return-void
.end method

.method static reset(Ljava/lang/StringBuilder;)V
    .registers 3

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_a
    return-void
.end method


# virtual methods
.method final asCharacter()Lorg/jsoup/parser/Token$Character;
    .registers 2

    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Character;

    return-object v0
.end method

.method final asComment()Lorg/jsoup/parser/Token$Comment;
    .registers 2

    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Comment;

    return-object v0
.end method

.method final asDoctype()Lorg/jsoup/parser/Token$Doctype;
    .registers 2

    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Doctype;

    return-object v0
.end method

.method final asEndTag()Lorg/jsoup/parser/Token$EndTag;
    .registers 2

    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    return-object v0
.end method

.method final asStartTag()Lorg/jsoup/parser/Token$StartTag;
    .registers 2

    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    return-object v0
.end method

.method endPos()I
    .registers 2

    iget v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    return v0
.end method

.method endPos(I)V
    .registers 2

    iput p1, p0, Lorg/jsoup/parser/Token;->endPos:I

    return-void
.end method

.method final isCData()Z
    .registers 2

    instance-of v0, p0, Lorg/jsoup/parser/Token$CData;

    return v0
.end method

.method final isCharacter()Z
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method final isComment()Z
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method final isDoctype()Z
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method final isEOF()Z
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method final isEndTag()Z
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method final isStartTag()Z
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    return-object p0
.end method

.method startPos()I
    .registers 2

    iget v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    return v0
.end method

.method startPos(I)V
    .registers 2

    iput p1, p0, Lorg/jsoup/parser/Token;->startPos:I

    return-void
.end method

.method tokenType()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
