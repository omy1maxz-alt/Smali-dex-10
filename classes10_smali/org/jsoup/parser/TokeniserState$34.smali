.class final enum Lorg/jsoup/parser/TokeniserState$34;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    if-eqz v0, :cond_6d

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_54

    const v1, 0xffff

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7d

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7d

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7d

    packed-switch v0, :pswitch_data_7e

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    :pswitch_3c  #0x3c
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    :pswitch_42  #0x3e
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    :cond_4b
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    :cond_54
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    :cond_5a
    :pswitch_5a  #0x3d
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    :cond_6d
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :cond_7d
    :goto_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x3c
        :pswitch_3c  #0000003c
        :pswitch_5a  #0000003d
        :pswitch_42  #0000003e
    .end packed-switch
.end method
