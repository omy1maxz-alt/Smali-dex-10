.class public Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;
.super Ljava/lang/Object;
.source "Lexer.java"


# instance fields
.field public final end:I

.field public final start:I

.field public final token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    iput p2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->start:I

    iput p3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$ParsedToken;->end:I

    return-void
.end method
