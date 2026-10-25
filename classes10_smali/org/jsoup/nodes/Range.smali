.class public Lorg/jsoup/nodes/Range;
.super Ljava/lang/Object;
.source "Range.java"


# static fields
.field private static final EndRangeKey:Ljava/lang/String;

.field private static final RangeKey:Ljava/lang/String;

.field private static final Untracked:Lorg/jsoup/nodes/Range;

.field private static final UntrackedPos:Lorg/jsoup/nodes/Range$Position;


# instance fields
.field private final end:Lorg/jsoup/nodes/Range$Position;

.field private final start:Lorg/jsoup/nodes/Range$Position;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "jsoup.sourceRange"

    invoke-static {v0}, Lorg/jsoup/nodes/Attributes;->internalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Range;->RangeKey:Ljava/lang/String;

    const-string v0, "jsoup.endSourceRange"

    invoke-static {v0}, Lorg/jsoup/nodes/Attributes;->internalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Range;->EndRangeKey:Ljava/lang/String;

    new-instance v0, Lorg/jsoup/nodes/Range$Position;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    sput-object v0, Lorg/jsoup/nodes/Range;->UntrackedPos:Lorg/jsoup/nodes/Range$Position;

    new-instance v1, Lorg/jsoup/nodes/Range;

    invoke-direct {v1, v0, v0}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    sput-object v1, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    iput-object p2, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_28

    :cond_12
    check-cast p1, Lorg/jsoup/nodes/Range;

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    iget-object v2, p1, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    iget-object p1, p1, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_28
    :goto_28
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Range$Position;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Range$Position;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public track(Lorg/jsoup/nodes/Node;Z)V
    .registers 3

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object p1

    if-eqz p2, :cond_9

    sget-object p2, Lorg/jsoup/nodes/Range;->RangeKey:Ljava/lang/String;

    goto :goto_b

    :cond_9
    sget-object p2, Lorg/jsoup/nodes/Range;->EndRangeKey:Ljava/lang/String;

    :goto_b
    invoke-virtual {p1, p2, p0}, Lorg/jsoup/nodes/Attributes;->putUserData(Ljava/lang/String;Ljava/lang/Object;)Lorg/jsoup/nodes/Attributes;

    return-void
.end method
