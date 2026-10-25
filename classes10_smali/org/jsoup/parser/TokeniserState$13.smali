.class final enum Lorg/jsoup/parser/TokeniserState$13;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .registers 4

    const-string v0, "</"

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/StringBuilder;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .registers 5

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesAsciiAlpha()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_15
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_39

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState$13;->anythingElse(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V

    goto :goto_6b

    :cond_39
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_6b

    :cond_48
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState$13;->anythingElse(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V

    goto :goto_6b

    :cond_4c
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_6b

    :cond_58
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState$13;->anythingElse(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V

    goto :goto_6b

    :cond_5c
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_6b

    :cond_68
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState$13;->anythingElse(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V

    :goto_6b
    return-void
.end method
