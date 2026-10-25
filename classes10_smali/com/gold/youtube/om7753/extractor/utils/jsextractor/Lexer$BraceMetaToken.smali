.class Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;
.super Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;
.source "Lexer.java"


# instance fields
.field public final brace:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;ILcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;-><init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;I)V

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;

    return-void
.end method
