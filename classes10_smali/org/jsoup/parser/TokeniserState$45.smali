.class final enum Lorg/jsoup/parser/TokeniserState$45;
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

    if-eqz v0, :cond_3a

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_34

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_28

    const v1, 0xffff

    if-eq v0, v1, :cond_1c

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4a

    :cond_1c
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitCommentPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4a

    :cond_28
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitCommentPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4a

    :cond_34
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->CommentStartDash:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4a

    :cond_3a
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Comment;->append(C)Lorg/jsoup/parser/Token$Comment;

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_4a
    return-void
.end method
