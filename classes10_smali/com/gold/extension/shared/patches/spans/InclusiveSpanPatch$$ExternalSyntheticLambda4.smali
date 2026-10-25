.class public final synthetic Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;

.field public final synthetic f$1:Lcom/gold/extension/shared/patches/spans/SpanFilter;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;Lcom/gold/extension/shared/patches/spans/SpanFilter;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda4;->f$0:Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;

    iput-object p2, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda4;->f$1:Lcom/gold/extension/shared/patches/spans/SpanFilter;

    iput-object p3, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final patternMatched(Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda4;->f$0:Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;

    iget-object v1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda4;->f$1:Lcom/gold/extension/shared/patches/spans/SpanFilter;

    iget-object v2, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->$r8$lambda$wR3RASGQyav_dx-mYHdQdqw_tXs(Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;Lcom/gold/extension/shared/patches/spans/SpanFilter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
