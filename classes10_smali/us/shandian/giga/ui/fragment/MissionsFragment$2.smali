.class Lus/shandian/giga/ui/fragment/MissionsFragment$2;
.super Lms;
.source "MissionsFragment.java"


# instance fields
.field final synthetic this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;


# direct methods
.method constructor <init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V
    .registers 2

    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$2;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-direct {p0}, Lms;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment$2;->this$0:Lus/shandian/giga/ui/fragment/MissionsFragment;

    invoke-static {v0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->access$100(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/ui/adapter/MissionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->d(I)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_11

    if-eq p1, v0, :cond_11

    return v1

    :cond_11
    return v0
.end method
