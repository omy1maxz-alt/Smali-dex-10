.class final enum Lorg/jsoup/parser/TokeniserState$35;
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

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeToAnySorted([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_64

    const/16 v0, 0xa

    if-eq p2, v0, :cond_64

    const/16 v0, 0xc

    if-eq p2, v0, :cond_64

    const/16 v0, 0xd

    if-eq p2, v0, :cond_64

    const/16 v0, 0x20

    if-eq p2, v0, :cond_64

    const/16 v0, 0x22

    if-eq p2, v0, :cond_5b

    const/16 v0, 0x27

    if-eq p2, v0, :cond_5b

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_55

    const v0, 0xffff

    if-eq p2, v0, :cond_4c

    packed-switch p2, :pswitch_data_6a

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    goto :goto_69

    :pswitch_3d  #0x3e
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_69

    :pswitch_46  #0x3d
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_69

    :cond_4c
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_69

    :cond_55
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_69

    :cond_5b
    :pswitch_5b  #0x3c
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    goto :goto_69

    :cond_64
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x3c
        :pswitch_5b  #0000003c
        :pswitch_46  #0000003d
        :pswitch_3d  #0000003e
    .end packed-switch
.end method
