.class public final synthetic Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final patternMatched(Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 11

    .line 0
    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, [B

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter;->$r8$lambda$tmZFlHlOiCNQA_pZDMuW3b3h4UQ(ZLjava/lang/String;[BIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
