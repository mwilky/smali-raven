.class public final Landroidx/mediarouter/R$color;
.super Ljava/lang/Object;
.source "R.java"


# direct methods
.method public static final cancellationReasonDebugString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "REASON_ASSISTANT_CANCEL"

    goto :goto_0

    :pswitch_1
    const-string p0, "REASON_CLEAR_DATA"

    goto :goto_0

    :pswitch_2
    const-string p0, "REASON_CHANNEL_REMOVED"

    goto :goto_0

    :pswitch_3
    const-string p0, "REASON_TIMEOUT"

    goto :goto_0

    :pswitch_4
    const-string p0, "REASON_SNOOZED"

    goto :goto_0

    :pswitch_5
    const-string p0, "REASON_CHANNEL_BANNED"

    goto :goto_0

    :pswitch_6
    const-string p0, "REASON_UNAUTOBUNDLED"

    goto :goto_0

    :pswitch_7
    const-string p0, "REASON_PROFILE_TURNED_OFF"

    goto :goto_0

    :pswitch_8
    const-string p0, "REASON_PACKAGE_SUSPENDED"

    goto :goto_0

    :pswitch_9
    const-string p0, "REASON_GROUP_OPTIMIZATION"

    goto :goto_0

    :pswitch_a
    const-string p0, "REASON_GROUP_SUMMARY_CANCELED"

    goto :goto_0

    :pswitch_b
    const-string p0, "REASON_LISTENER_CANCEL_ALL"

    goto :goto_0

    :pswitch_c
    const-string p0, "REASON_LISTENER_CANCEL"

    goto :goto_0

    :pswitch_d
    const-string p0, "REASON_APP_CANCEL_ALL"

    goto :goto_0

    :pswitch_e
    const-string p0, "REASON_APP_CANCEL"

    goto :goto_0

    :pswitch_f
    const-string p0, "REASON_PACKAGE_BANNED"

    goto :goto_0

    :pswitch_10
    const-string p0, "REASON_USER_STOPPED"

    goto :goto_0

    :pswitch_11
    const-string p0, "REASON_PACKAGE_CHANGED"

    goto :goto_0

    :pswitch_12
    const-string p0, "REASON_ERROR"

    goto :goto_0

    :pswitch_13
    const-string p0, "REASON_CANCEL_ALL"

    goto :goto_0

    :pswitch_14
    const-string p0, "REASON_CANCEL"

    goto :goto_0

    :pswitch_15
    const-string p0, "REASON_CLICK"

    goto :goto_0

    :pswitch_16
    const-string p0, "REASON_UNKNOWN"

    goto :goto_0

    :pswitch_17
    const-string p0, "REASON_NOT_CANCELED"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    array-length v4, v2

    if-gtz v4, :cond_2

    goto :goto_5

    :cond_2
    aget-object v2, v2, v0

    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v3, v1, :cond_4

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v0

    :goto_0
    if-eqz v3, :cond_8

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-nez v3, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v3, p1, v4, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v3, p1, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    :goto_2
    move v2, v5

    goto :goto_3

    :cond_8
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_3
    if-nez v2, :cond_9

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_9
    const/4 v3, -0x2

    :cond_a
    :goto_5
    return v3
.end method
