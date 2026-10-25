.class final enum Lorg/jsoup/parser/TokeniserState$65;
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
    .registers 4

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_43

    const/16 v0, 0xa

    if-eq p2, v0, :cond_43

    const/16 v0, 0xc

    if-eq p2, v0, :cond_43

    const/16 v0, 0xd

    if-eq p2, v0, :cond_43

    const/16 v0, 0x20

    if-eq p2, v0, :cond_43

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_3b

    const v0, 0xffff

    if-eq p2, v0, :cond_2a

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_43

    :cond_2a
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_43

    :cond_3b
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :cond_43
    :goto_43
    return-void
.end method
