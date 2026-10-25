.class Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;
.super Los;
.source "MissionAdapter.java"


# instance fields
.field header:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Los;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Los;->a:Landroid/view/View;

    const-string v0, "item_name"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;->header:Landroid/widget/TextView;

    return-void
.end method
