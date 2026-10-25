.class final enum Lorg/jsoup/parser/TokeniserState$50;
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

    move-result p2

    const-string v0, "--!"

    if-eqz p2, :cond_44

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_39

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_30

    const v1, 0xffff

    if-eq p2, v1, :cond_24

    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Comment;->append(Ljava/lang/String;)Lorg/jsoup/parser/Token$Comment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jsoup/parser/Token$Comment;->append(C)Lorg/jsoup/parser/Token$Comment;

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_58

    :cond_24
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitCommentPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_58

    :cond_30
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitCommentPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_58

    :cond_39
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Comment;->append(Ljava/lang/String;)Lorg/jsoup/parser/Token$Comment;

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->CommentEndDash:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_58

    :cond_44
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Comment;->append(Ljava/lang/String;)Lorg/jsoup/parser/Token$Comment;

    move-result-object p2

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Comment;->append(C)Lorg/jsoup/parser/Token$Comment;

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_58
    return-void
.end method
