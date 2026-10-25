.class public final synthetic Lcom/gold/extension/shared/patches/components/FilterGroupList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/patches/components/FilterGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/patches/components/FilterGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/patches/components/FilterGroup;

    return-void
.end method


# virtual methods
.method public final patternMatched(Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 5

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/patches/components/FilterGroup;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/patches/components/FilterGroupList;->$r8$lambda$WJhQotKT5VKlcbA1iT3kdcpN8rM(Lcom/gold/extension/shared/patches/components/FilterGroup;Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
