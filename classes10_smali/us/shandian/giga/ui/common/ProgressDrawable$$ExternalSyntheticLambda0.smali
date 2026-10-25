.class public final synthetic Lus/shandian/giga/ui/common/ProgressDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lus/shandian/giga/ui/common/ProgressDrawable;


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/ui/common/ProgressDrawable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/ui/common/ProgressDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
