.class final enum Lorg/jsoup/parser/TokeniserState$10;
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
    .registers 5

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consumeTagName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    if-eqz v0, :cond_5e

    const/16 v1, 0x20

    if-eq v0, v1, :cond_58

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_52

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_43

    const/16 p2, 0x3e

    if-eq v0, p2, :cond_49

    const p2, 0xffff

    if-eq v0, p2, :cond_3a

    const/16 p2, 0x9

    if-eq v0, p2, :cond_58

    const/16 p2, 0xa

    if-eq v0, p2, :cond_58

    const/16 p2, 0xc

    if-eq v0, p2, :cond_58

    const/16 p2, 0xd

    if-eq v0, p2, :cond_58

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token$Tag;->appendTagName(C)V

    goto :goto_67

    :cond_3a
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_67

    :cond_43
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    :cond_49
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_67

    :cond_52
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_67

    :cond_58
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_67

    :cond_5e
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-static {}, Lorg/jsoup/parser/TokeniserState;->access$300()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    :goto_67
    return-void
.end method
