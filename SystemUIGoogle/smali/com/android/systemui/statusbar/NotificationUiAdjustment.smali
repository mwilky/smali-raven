.class public final Lcom/android/systemui/statusbar/NotificationUiAdjustment;
.super Ljava/lang/Object;
.source "NotificationUiAdjustment.java"


# instance fields
.field public final isConversation:Z

.field public final smartActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field public final smartReplies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->smartActions:Ljava/util/List;

    if-nez p3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->smartReplies:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->isConversation:Z

    return-void
.end method

.method public static areDifferent(Ljava/util/List;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_18

    if-nez p1, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_17

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    iget-object v5, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v6, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    return v1

    :cond_3
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    if-ne v5, v6, :cond_4

    move v5, v0

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v5

    xor-int/2addr v5, v1

    goto :goto_2

    :cond_6
    :goto_1
    move v5, v1

    :goto_2
    if-eqz v5, :cond_7

    return v1

    :cond_7
    iget-object v5, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    iget-object v6, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    return v1

    :cond_8
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v3

    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v4

    if-ne v3, v4, :cond_a

    :cond_9
    move v3, v0

    goto/16 :goto_9

    :cond_a
    if-eqz v3, :cond_15

    if-nez v4, :cond_b

    goto :goto_8

    :cond_b
    array-length v5, v3

    array-length v6, v4

    if-eq v5, v6, :cond_c

    goto :goto_8

    :cond_c
    move v5, v0

    :goto_3
    array-length v6, v3

    if-ge v5, v6, :cond_9

    aget-object v6, v3, v5

    aget-object v7, v4, v5

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v7

    if-ne v6, v7, :cond_e

    goto :goto_5

    :cond_e
    if-eqz v6, :cond_13

    if-nez v7, :cond_f

    goto :goto_6

    :cond_f
    array-length v8, v6

    array-length v9, v7

    if-eq v8, v9, :cond_10

    goto :goto_6

    :cond_10
    move v8, v0

    :goto_4
    array-length v9, v6

    if-ge v8, v9, :cond_12

    aget-object v9, v6, v8

    aget-object v10, v7, v8

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    goto :goto_6

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_12
    :goto_5
    move v6, v0

    goto :goto_7

    :cond_13
    :goto_6
    move v6, v1

    :goto_7
    if-eqz v6, :cond_14

    goto :goto_8

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_15
    :goto_8
    move v3, v1

    :goto_9
    if-eqz v3, :cond_16

    return v1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_17
    return v0

    :cond_18
    :goto_a
    return v1
.end method
