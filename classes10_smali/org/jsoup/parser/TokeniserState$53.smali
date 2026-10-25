.class final enum Lorg/jsoup/parser/TokeniserState$53;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    iget-object p1, p1, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_12
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_5d

    const/16 v0, 0x20

    if-eq p2, v0, :cond_57

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_4e

    const v0, 0xffff

    if-eq p2, v0, :cond_3d

    const/16 v0, 0x9

    if-eq p2, v0, :cond_57

    const/16 v0, 0xa

    if-eq p2, v0, :cond_57

    const/16 v0, 0xc

    if-eq p2, v0, :cond_57

    const/16 v0, 0xd

    if-eq p2, v0, :cond_57

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    iget-object p1, p1, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_3d
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_6a

    :cond_4e
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_6a

    :cond_57
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_6a

    :cond_5d
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    iget-object p1, p1, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6a
    return-void
.end method
