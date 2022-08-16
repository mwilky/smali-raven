.class public final Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;
.super Ljava/lang/Object;
.source "ServiceBinderCallback.java"

# interfaces
.implements Lcom/android/systemui/util/condition/Monitor$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBound:Z

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mIntent:Landroid/content/Intent;

.field public final mServiceConnection:Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ServiceBinderCallback"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback$1;

    invoke-direct {v0}, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback$1;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mServiceConnection:Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback$1;

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 4

    sget-boolean v0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->DEBUG:Z

    const-string v1, "ServiceBinderCallback"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConditionsChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mBound:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    const-string/jumbo p1, "unbinding"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mServiceConnection:Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback$1;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mBound:Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    const-string p1, "binding with intent:"

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mServiceConnection:Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback$1;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    iput-boolean v3, p0, Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;->mBound:Z

    :cond_4
    :goto_0
    return-void
.end method
