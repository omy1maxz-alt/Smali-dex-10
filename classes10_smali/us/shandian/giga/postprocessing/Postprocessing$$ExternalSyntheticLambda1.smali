.class public final synthetic Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;


# instance fields
.field public final synthetic f$0:Lus/shandian/giga/postprocessing/Postprocessing;


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/postprocessing/Postprocessing;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;->f$0:Lus/shandian/giga/postprocessing/Postprocessing;

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/Exception;)Z
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;->f$0:Lus/shandian/giga/postprocessing/Postprocessing;

    invoke-static {v0, p1}, Lus/shandian/giga/postprocessing/Postprocessing;->$r8$lambda$l31WXroIsw_L_zFxYojXmO93smw(Lus/shandian/giga/postprocessing/Postprocessing;Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method
