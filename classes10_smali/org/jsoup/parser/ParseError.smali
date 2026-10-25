.class public Lorg/jsoup/parser/ParseError;
.super Ljava/lang/Object;
.source "ParseError.java"


# instance fields
.field private cursorPos:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private pos:I


# direct methods
.method constructor <init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/ParseError;->pos:I

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->cursorPos()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    iput-object p2, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method varargs constructor <init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/ParseError;->pos:I

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->cursorPos()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
