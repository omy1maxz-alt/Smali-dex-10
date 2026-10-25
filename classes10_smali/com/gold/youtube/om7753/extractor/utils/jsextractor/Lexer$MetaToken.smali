.class Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;
.super Ljava/lang/Object;
.source "Lexer.java"


# instance fields
.field public final lineno:I

.field public final token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iput p2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$MetaToken;->lineno:I

    return-void
.end method
