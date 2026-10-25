.class Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;
.super Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;
.source "Lexer.java"


# instance fields
.field public final paren:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;ILcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;-><init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;I)V

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;

    return-void
.end method
