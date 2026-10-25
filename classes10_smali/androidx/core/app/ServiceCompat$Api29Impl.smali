.class Landroidx/core/app/ServiceCompat$Api29Impl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V
    .registers 5

    if-eqz p3, :cond_c

    const/4 v0, -0x1

    if-ne p3, v0, :cond_6

    goto :goto_c

    :cond_6
    and-int/lit16 v0, p3, 0xff

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_f

    :cond_c
    :goto_c
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    :goto_f
    return-void
.end method
