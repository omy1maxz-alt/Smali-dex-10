.class public final Lcom/gold/extension/shared/patches/components/LithoFilterPatch;
.super Ljava/lang/Object;
.source "LithoFilterPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;,
        Lcom/gold/extension/shared/patches/components/LithoFilterPatch$DummyFilter;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final LITHO_LAYOUT_THREAD_POOL_SIZE:I = 0x1

.field private static final bufferThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final contextSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

.field private static final filters:[Lcom/gold/extension/shared/patches/components/Filter;

.field private static final identifierSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

.field private static final pathSearchTree:Lcom/gold/extension/shared/StringTrieSearch;


# direct methods
.method public static synthetic $r8$lambda$-6QyRAPDPKAn5WBEzuQW3BOSp0Q()Ljava/lang/String;
    .registers 1

    .line 208
    const-string v0, "isFiltered failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$6oU8x4lLtNcdBvSXy_AxStPF5t8(I)Ljava/lang/String;
    .registers 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overriding core thread pool size from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to: 1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$89iij2FoeUELB9dEUyqAsJ9nWgY(I)Ljava/lang/String;
    .registers 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overriding max thread pool size from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to: 1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RZ8ARNlig7NIhfENyMftvdDiJss(Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;Ljava/lang/String;Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;
    .registers 4

    .line 137
    sget-object v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->IDENTIFIER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    if-ne p0, v0, :cond_1d

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " filtered identifier: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->-$$Nest$fgetidentifier(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " filtered path: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->-$$Nest$fgetpath(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VnamokDZBM-4ohoNQHjy8rvJf1o(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;
    .registers 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Searching "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kx7b7_wa1prTFUwWXwjEUj1H98Q(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring null or empty buffer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kzFoGeZbLfGLrkuFd8yoV1OE630()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->identifierSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

    .line 109
    invoke-virtual {v1}, Lcom/gold/extension/shared/TrieSearch;->numberOfPatterns()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " identifier filters ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Lcom/gold/extension/shared/TrieSearch;->getEstimatedMemorySize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " KB), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->pathSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

    .line 111
    invoke-virtual {v1}, Lcom/gold/extension/shared/TrieSearch;->numberOfPatterns()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path filters ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Lcom/gold/extension/shared/TrieSearch;->getEstimatedMemorySize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " KB)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$oDbUeUaBVNp3jAvDqqvkaZirQFU(Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Z
    .registers 18

    .line 128
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup;->isEnabled()Z

    move-result p4

    if-nez p4, :cond_8

    const/4 p0, 0x0

    return p0

    .line 130
    :cond_8
    move-object/from16 p4, p7

    check-cast p4, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;

    .line 131
    invoke-static {p4}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->-$$Nest$fgetcontextInterface(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Lcom/gold/extension/shared/patches/components/ContextInterface;

    move-result-object v1

    invoke-static {p4}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->-$$Nest$fgetidentifier(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->-$$Nest$fgetaccessibility(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->-$$Nest$fgetpath(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->-$$Nest$fgetbuffer(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)[B

    move-result-object v5

    invoke-static {p4}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->-$$Nest$fgetasciiStrings(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    move-result-object v6

    move-object v7, p0

    move-object v0, p1

    move-object v8, p2

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/gold/extension/shared/patches/components/Filter;->isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 136
    sget-object p1, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 137
    new-instance p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2, p3, p4}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;Ljava/lang/String;Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_42
    return p0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 66
    new-instance v0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$DummyFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$DummyFilter;-><init>(Lcom/gold/extension/shared/patches/components/LithoFilterPatch-IA;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/gold/extension/shared/patches/components/Filter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->patch_getFilterArray()[Lcom/gold/extension/shared/patches/components/Filter;

    move-result-object v1

    sput-object v1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->filters:[Lcom/gold/extension/shared/patches/components/Filter;

    .line 86
    new-array v0, v2, [B

    sput-object v0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->EMPTY_BYTE_ARRAY:[B

    .line 93
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->bufferThreadLocal:Ljava/lang/ThreadLocal;

    .line 95
    new-instance v0, Lcom/gold/extension/shared/StringTrieSearch;

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/gold/extension/shared/StringTrieSearch;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->contextSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

    .line 96
    new-instance v0, Lcom/gold/extension/shared/StringTrieSearch;

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/gold/extension/shared/StringTrieSearch;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->pathSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

    .line 97
    new-instance v0, Lcom/gold/extension/shared/StringTrieSearch;

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/gold/extension/shared/StringTrieSearch;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->identifierSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

    .line 101
    array-length v0, v1

    :goto_39
    if-ge v2, v0, :cond_52

    aget-object v3, v1, v2

    .line 102
    sget-object v4, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->identifierSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

    iget-object v5, v3, Lcom/gold/extension/shared/patches/components/Filter;->identifierCallbacks:Ljava/util/List;

    sget-object v6, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->IDENTIFIER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    invoke-static {v4, v3, v5, v6}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->filterUsingCallbacks(Lcom/gold/extension/shared/StringTrieSearch;Lcom/gold/extension/shared/patches/components/Filter;Ljava/util/List;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;)V

    .line 104
    sget-object v4, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->pathSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

    iget-object v5, v3, Lcom/gold/extension/shared/patches/components/Filter;->pathCallbacks:Ljava/util/List;

    sget-object v6, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->PATH:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    invoke-static {v4, v3, v5, v6}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->filterUsingCallbacks(Lcom/gold/extension/shared/StringTrieSearch;Lcom/gold/extension/shared/patches/components/Filter;Ljava/util/List;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 108
    :cond_52
    new-instance v0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterUsingCallbacks(Lcom/gold/extension/shared/StringTrieSearch;Lcom/gold/extension/shared/patches/components/Filter;Ljava/util/List;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/StringTrieSearch;",
            "Lcom/gold/extension/shared/patches/components/Filter;",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/patches/components/StringFilterGroup;",
            ">;",
            "Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 121
    invoke-virtual {v1}, Lcom/gold/extension/shared/patches/components/FilterGroup;->includeInSearch()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_c

    .line 125
    :cond_1f
    iget-object v2, v1, Lcom/gold/extension/shared/patches/components/FilterGroup;->filters:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_c

    aget-object v5, v2, v4

    .line 126
    new-instance v6, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, p1, p3, v0}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/gold/extension/shared/TrieSearch;->addPattern(Ljava/lang/Object;Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_34
    return-void
.end method

.method public static getExecutorCorePoolSize(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    .line 223
    new-instance v1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_b
    return v0
.end method

.method public static getExecutorMaxThreads(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    .line 235
    new-instance v1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_b
    return v0
.end method

.method public static isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v1, 0x0

    .line 173
    :try_start_1
    invoke-interface {p0}, Lcom/gold/extension/shared/patches/components/ContextInterface;->patch_getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-interface {p0}, Lcom/gold/extension/shared/patches/components/ContextInterface;->patch_getPathBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_84

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_84

    .line 180
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_3c

    .line 183
    invoke-static {p3}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x7c

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_37
    move-object v6, p2

    goto :goto_48

    :catch_39
    move-exception v0

    move-object p0, v0

    goto :goto_85

    :cond_3c
    if-eqz p2, :cond_45

    .line 185
    invoke-static {p2}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_45

    goto :goto_37

    .line 188
    :cond_45
    const-string p2, ""

    goto :goto_37

    .line 191
    :goto_48
    invoke-static {}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->is_20_22_or_greater()Z

    move-result p2

    if-eqz p2, :cond_4f

    goto :goto_57

    .line 193
    :cond_4f
    sget-object p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->bufferThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_57
    if-nez p1, :cond_5b

    .line 197
    sget-object p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->EMPTY_BYTE_ARRAY:[B

    :cond_5b
    move-object v7, p1

    .line 200
    new-instance v2, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;

    new-instance v8, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    invoke-direct {v8, v7}, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;-><init>([B)V

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;-><init>(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/LithoFilterPatch-IA;)V

    .line 203
    new-instance p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda5;

    invoke-direct {p0, v2}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 205
    sget-object p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->identifierSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

    invoke-virtual {p0, v4, v2}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    sget-object p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->pathSearchTree:Lcom/gold/extension/shared/StringTrieSearch;

    .line 206
    invoke-virtual {p0, v5, v2}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7e} :catch_39

    if-eqz p0, :cond_81

    goto :goto_82

    :cond_81
    return v1

    :cond_82
    :goto_82
    const/4 p0, 0x1

    return p0

    :cond_84
    :goto_84
    return v1

    .line 208
    :goto_85
    new-instance p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static is_20_22_or_greater()Z
    .registers 2

    .line 215
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "20.22.00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static patch_getFilterArray()[Lcom/gold/extension/shared/patches/components/Filter;
    .registers 3

    const/16 v1, 0xf

    new-array v2, v1, [Lcom/gold/extension/shared/patches/components/Filter;

    new-instance v0, Lcom/gold/extension/youtube/patches/components/AdvancedVideoQualityMenuFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/AdvancedVideoQualityMenuFilter;-><init>()V

    const/16 v1, 0xe

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/PlaybackSpeedMenuFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/PlaybackSpeedMenuFilter;-><init>()V

    const/16 v1, 0xd

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/SystemShareSheetFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/SystemShareSheetFilter;-><init>()V

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/QuickActionButtonsFilter;-><init>()V

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;-><init>()V

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;-><init>()V

    const/16 v1, 0x9

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/CustomFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/CustomFilter;-><init>()V

    const/16 v1, 0x8

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter;-><init>()V

    const/16 v1, 0x7

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/CommentsFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/CommentsFilter;-><init>()V

    const/16 v1, 0x6

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/DescriptionComponentsFilter;-><init>()V

    const/16 v1, 0x5

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter;-><init>()V

    const/16 v1, 0x4

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/InfoCardsFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/InfoCardsFilter;-><init>()V

    const/16 v1, 0x3

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/AdsFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/AdsFilter;-><init>()V

    const/16 v1, 0x2

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/HorizontalShelvesFilter;-><init>()V

    const/16 v1, 0x1

    aput-object v0, v2, v1

    new-instance v0, Lcom/gold/extension/youtube/patches/components/ShortsFilter;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/components/ShortsFilter;-><init>()V

    const/16 v1, 0x0

    aput-object v0, v2, v1

    return-object v2
.end method

.method public static setProtoBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2

    if-eqz p0, :cond_13

    .line 154
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 163
    :cond_9
    sget-object v0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->bufferThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_13
    :goto_13
    new-instance v0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda2;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method
