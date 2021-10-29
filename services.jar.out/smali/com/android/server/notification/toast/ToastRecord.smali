.class public abstract Lcom/android/server/notification/toast/ToastRecord;
.super Ljava/lang/Object;
.source "ToastRecord.java"


# instance fields
.field public final displayId:I

.field public final isSystemToast:Z

.field private mDuration:I

.field protected final mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

.field public final pid:I

.field public final pkg:Ljava/lang/String;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final windowToken:Landroid/os/Binder;


# direct methods
.method protected constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;ILandroid/os/Binder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/toast/ToastRecord;->mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

    iput p2, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    iput p3, p0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    iput-object p4, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    iput-object p6, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iput p9, p0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    iput p7, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    return v0
.end method

.method public abstract hide()V
.end method

.method public abstract isAppRendered()Z
.end method

.method public keepProcessAlive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract show()Z
.end method

.method public update(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    return-void
.end method
