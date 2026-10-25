.class Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;
.super Ljava/lang/Object;
.source "Lexer.java"


# instance fields
.field public final conditional:Z

.field public final funcExpr:Z


# direct methods
.method constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;->funcExpr:Z

    iput-boolean p2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Lexer$Paren;->conditional:Z

    return-void
.end method
