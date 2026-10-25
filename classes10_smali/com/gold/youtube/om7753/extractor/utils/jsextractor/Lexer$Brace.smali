.class Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;
.super Ljava/lang/Object;
.source "Lexer.java"


# instance fields
.field public final isBlock:Z

.field public final paren:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;


# direct methods
.method constructor <init>(ZLcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Brace;->paren:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;

    return-void
.end method
