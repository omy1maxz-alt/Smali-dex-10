.class final enum Lorg/jsoup/parser/TokeniserState$39;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeAttributeQuoted(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(Ljava/lang/String;)V

    goto :goto_16

    :cond_11
    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Tag;->setEmptyAttributeValue()V

    :goto_16
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_54

    const v1, 0xffff

    if-eq p2, v1, :cond_4b

    const/16 v1, 0x27

    const/16 v2, 0x26

    if-eq p2, v2, :cond_35

    if-eq p2, v1, :cond_2f

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_5f

    :cond_2f
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_5f

    :cond_35
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_45

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue([I)V

    goto :goto_5f

    :cond_45
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_5f

    :cond_4b
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_5f

    :cond_54
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    :goto_5f
    return-void
.end method
