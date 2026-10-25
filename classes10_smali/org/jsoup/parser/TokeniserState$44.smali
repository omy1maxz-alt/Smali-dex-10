.class final enum Lorg/jsoup/parser/TokeniserState$44;
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

    const-string v0, "--"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createCommentPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->CommentStart:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_3b

    :cond_11
    const-string v0, "DOCTYPE"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Doctype:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_3b

    :cond_1f
    const-string v0, "[CDATA["

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_30

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createTempBuffer()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_3b

    :cond_30
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createBogusCommentPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_3b
    return-void
.end method
