.class public Lcom/android/server/notification/NotificationHistoryDatabaseFactory;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabaseFactory.java"


# static fields
.field public static sTestingNotificationHistoryDb:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public static create(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/notification/NotificationHistoryDatabase;
    .locals 1

    sget-object v0, Lcom/android/server/notification/NotificationHistoryDatabaseFactory;->sTestingNotificationHistoryDb:Lcom/android/server/notification/NotificationHistoryDatabase;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)V

    return-object v0
.end method
