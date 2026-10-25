.class Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FeatureFlagsManagerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlagAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final fullFlags:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/TreeSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x1090010

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 465
    const-string p1, ""

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->searchQuery:Ljava/lang/String;

    .line 469
    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->fullFlags:Ljava/util/TreeSet;

    .line 470
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->updateFiltered()V

    return-void
.end method

.method private updateFiltered()V
    .registers 4

    .line 479
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 480
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->fullFlags:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 481
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 482
    iget-object v2, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->searchQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 483
    :cond_29
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_9

    .line 486
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getFullFlags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->fullFlags:Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public refresh()V
    .registers 1

    .line 490
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->updateFiltered()V

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_5

    .line 474
    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->searchQuery:Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->updateFiltered()V

    return-void
.end method
