.class public Lcom/android/server/wm/ActivityAssistInfo;
.super Ljava/lang/Object;
.source "ActivityAssistInfo.java"


# instance fields
.field private final mActivityToken:Landroid/os/IBinder;

.field private final mAssistToken:Landroid/os/IBinder;

.field private final mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iput-object v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mActivityToken:Landroid/os/IBinder;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    iput-object v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mTaskId:I

    return-void
.end method


# virtual methods
.method public getActivityToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAssistToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mAssistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mTaskId:I

    return v0
.end method
