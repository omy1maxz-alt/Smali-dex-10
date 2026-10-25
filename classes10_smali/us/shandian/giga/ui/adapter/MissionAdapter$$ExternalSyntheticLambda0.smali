.class public final synthetic Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

.field public final synthetic f$1:Lus/shandian/giga/get/DownloadMission;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/DownloadMission;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;->f$1:Lus/shandian/giga/get/DownloadMission;

    iput p3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;->f$1:Lus/shandian/giga/get/DownloadMission;

    iget v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->$r8$lambda$USBbUOv34Nff_J7my6twYsR3syY(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/DownloadMission;ILandroid/content/DialogInterface;I)V

    return-void
.end method
