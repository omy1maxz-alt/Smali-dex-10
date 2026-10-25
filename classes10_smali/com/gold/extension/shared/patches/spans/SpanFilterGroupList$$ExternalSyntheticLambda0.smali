.class public final synthetic Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;

    return-void
.end method


# virtual methods
.method public final patternMatched(Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 5

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->$r8$lambda$6Dqg83SxYGcEyv2zHvOQ4ds8sWY(Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
