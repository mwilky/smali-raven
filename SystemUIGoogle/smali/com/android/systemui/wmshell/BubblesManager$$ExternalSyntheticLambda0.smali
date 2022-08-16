.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    return-void
.end method


# virtual methods
.method public final onNotificationRemoveRequested(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v0

    :goto_2
    const/16 v4, 0x8

    if-eq p2, v4, :cond_4

    const/16 v4, 0x9

    if-ne p2, v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v0

    :goto_4
    const/16 v5, 0xc

    if-ne p2, v5, :cond_5

    move p2, v0

    goto :goto_5

    :cond_5
    move p2, v1

    :goto_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_8

    :cond_6
    if-nez v2, :cond_8

    if-nez v3, :cond_8

    if-eqz p2, :cond_7

    goto :goto_6

    :cond_7
    move v0, v1

    :cond_8
    :goto_6
    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/BubblesManager;->handleDismissalInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    :cond_9
    return v1
.end method
