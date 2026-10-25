.class public final synthetic Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
