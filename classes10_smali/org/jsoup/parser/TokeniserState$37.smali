.class final enum Lorg/jsoup/parser/TokeniserState$37;
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

    if-eqz v0, :cond_76

    const/16 v1, 0x20

    if-eq v0, v1, :cond_86

    const/16 v1, 0x22

    if-eq v0, v1, :cond_70

    const/16 v1, 0x60

    if-eq v0, v1, :cond_62

    const v1, 0xffff

    if-eq v0, v1, :cond_56

    const/16 v1, 0x9

    if-eq v0, v1, :cond_86

    const/16 v1, 0xa

    if-eq v0, v1, :cond_86

    const/16 v1, 0xc

    if-eq v0, v1, :cond_86

    const/16 v1, 0xd

    if-eq v0, v1, :cond_86

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x27

    if-eq v0, v1, :cond_47

    packed-switch v0, :pswitch_data_88

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_86

    :pswitch_3b  #0x3e
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_86

    :cond_47
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_86

    :cond_4d
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_86

    :cond_56
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_86

    :cond_62
    :pswitch_62  #0x3c, 0x3d
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_86

    :cond_70
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_86

    :cond_76
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :cond_86
    :goto_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x3c
        :pswitch_62  #0000003c
        :pswitch_62  #0000003d
        :pswitch_3b  #0000003e
    .end packed-switch
.end method
