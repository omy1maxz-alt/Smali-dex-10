.class public abstract Lcom/gold/extension/shared/patches/components/FilterGroupList;
.super Ljava/lang/Object;
.source "FilterGroupList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Lcom/gold/extension/shared/patches/components/FilterGroup<",
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
.method public static synthetic $r8$lambda$WJhQotKT5VKlcbA1iT3kdcpN8rM(Lcom/gold/extension/shared/patches/components/FilterGroup;Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 5

    .line 29
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 30
    check-cast p4, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    .line 31
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p4, p0, p2, p3}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->setValues(Lcom/gold/extension/shared/settings/BooleanSetting;II)V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList;->filterGroups:Ljava/util/List;

    .line 17
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroupList;->createSearchGraph()Lcom/gold/extension/shared/TrieSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList;->search:Lcom/gold/extension/shared/TrieSearch;

    return-void
.end method


# virtual methods
.method public final varargs addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList;->filterGroups:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_2f

    aget-object v3, p1, v2

    .line 24
    invoke-virtual {v3}, Lcom/gold/extension/shared/patches/components/FilterGroup;->includeInSearch()Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_2c

    .line 27
    :cond_17
    iget-object v4, v3, Lcom/gold/extension/shared/patches/components/FilterGroup;->filters:[Ljava/lang/Object;

    array-length v5, v4

    move v6, v1

    :goto_1b
    if-ge v6, v5, :cond_2c

    aget-object v7, v4, v6

    .line 28
    iget-object v8, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList;->search:Lcom/gold/extension/shared/TrieSearch;

    new-instance v9, Lcom/gold/extension/shared/patches/components/FilterGroupList$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3}, Lcom/gold/extension/shared/patches/components/FilterGroupList$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/patches/components/FilterGroup;)V

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

.method public check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;-><init>()V

    .line 59
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList;->search:Lcom/gold/extension/shared/TrieSearch;

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

    .line 48
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList;->filterGroups:Ljava/util/List;

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

    .line 43
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList;->filterGroups:Ljava/util/List;

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

    .line 54
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroupList;->filterGroups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
