.class public final synthetic Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field public final synthetic f$1:Lcom/gold/extension/shared/patches/components/Filter;

.field public final synthetic f$2:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    iput-object p2, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;->f$1:Lcom/gold/extension/shared/patches/components/Filter;

    iput-object p3, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;->f$2:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    iput-object p4, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final patternMatched(Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 13

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    iget-object v1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;->f$1:Lcom/gold/extension/shared/patches/components/Filter;

    iget-object v2, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;->f$2:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    iget-object v3, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->$r8$lambda$oDbUeUaBVNp3jAvDqqvkaZirQFU(Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
