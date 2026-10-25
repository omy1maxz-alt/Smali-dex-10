.class final enum Lorg/jsoup/parser/TokeniserState$40;
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

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeToAnySorted([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_83

    const/16 v0, 0x20

    if-eq p2, v0, :cond_7d

    const/16 v0, 0x22

    if-eq p2, v0, :cond_74

    const/16 v0, 0x60

    if-eq p2, v0, :cond_74

    const v0, 0xffff

    if-eq p2, v0, :cond_6b

    const/16 v0, 0x9

    if-eq p2, v0, :cond_7d

    const/16 v0, 0xa

    if-eq p2, v0, :cond_7d

    const/16 v0, 0xc

    if-eq p2, v0, :cond_7d

    const/16 v0, 0xd

    if-eq p2, v0, :cond_7d

    const/16 v0, 0x26

    if-eq p2, v0, :cond_52

    const/16 v0, 0x27

    if-eq p2, v0, :cond_74

    packed-switch p2, :pswitch_data_90

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_8e

    :pswitch_49  #0x3e
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_8e

    :cond_52
    const/16 p2, 0x3e

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_65

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue([I)V

    goto :goto_8e

    :cond_65
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_8e

    :cond_6b
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_8e

    :cond_74
    :pswitch_74  #0x3c, 0x3d
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_8e

    :cond_7d
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_8e

    :cond_83
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    :goto_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x3c
        :pswitch_74  #0000003c
        :pswitch_74  #0000003d
        :pswitch_49  #0000003e
    .end packed-switch
.end method
