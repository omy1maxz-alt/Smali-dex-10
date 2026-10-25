.class public final synthetic Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda16;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda16;->f$0:Ljava/util/Comparator;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->$r8$lambda$0tDGExVLgP0p_ZV4x0f7bEZoaIw(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method
