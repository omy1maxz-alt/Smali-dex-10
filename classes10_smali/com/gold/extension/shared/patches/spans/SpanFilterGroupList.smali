.class public abstract Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;
.super Ljava/lang/Object;
.source "SpanFilterGroupList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Lcom/gold/extension/shared/patches/spans/SpanFilterGroup<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final filterGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final search:Lcom/gold/extension/shared/TrieSearch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/TrieSearch<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6Dqg83SxYGcEyv2zHvOQ4ds8sWY(Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 5

    .line 38
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 39
    check-cast p4, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;

    .line 41
    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p4, p0, p2}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;->setValues(Lcom/gold/extension/shared/settings/BooleanSetting;I)V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->filterGroups:Ljava/util/List;

    .line 25
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->createSearchGraph()Lcom/gold/extension/shared/TrieSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->search:Lcom/gold/extension/shared/TrieSearch;

    return-void
.end method


# virtual methods
.method public final varargs addAll([Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->filterGroups:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_2f

    aget-object v3, p1, v2

    .line 32
    invoke-virtual {v3}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->includeInSearch()Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_2c

    .line 35
    :cond_17
    iget-object v4, v3, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->filters:[Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_1b
    if-ge v6, v5, :cond_2c

    aget-object v7, v4, v6

    .line 36
    iget-object v8, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->search:Lcom/gold/extension/shared/TrieSearch;

    new-instance v9, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;)V

    invoke-virtual {v8, v7, v9}, Lcom/gold/extension/shared/TrieSearch;->addPattern(Ljava/lang/Object;Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2f
    return-void
.end method

.method public check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;-><init>()V

    .line 69
    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->search:Lcom/gold/extension/shared/TrieSearch;

    invoke-virtual {p0, p1, v0}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public abstract createSearchGraph()Lcom/gold/extension/shared/TrieSearch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/shared/TrieSearch<",
            "TV;>;"
        }
    .end annotation
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->filterGroups:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->filterGroups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;->filterGroups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
