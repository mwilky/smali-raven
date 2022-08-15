.class public final Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProgressStartOpEvent"
.end annotation


# instance fields
.field public mAttributionChainId:I

.field public mAttributionFlags:I

.field public mAttributionTag:Ljava/lang/String;

.field public mClientId:Landroid/os/IBinder;

.field public mFlags:I

.field public mOnDeath:Ljava/lang/Runnable;

.field public mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

.field public mStartElapsedTime:J

.field public mStartTime:J

.field public mUidState:I

.field public numUnfinishedStarts:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClientId(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlags(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .locals 0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidState(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .locals 0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmStartElapsedTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStartTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-void
.end method

.method public constructor <init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    iput p8, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    iput-object p9, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    iput p10, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    iput p11, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    iput p12, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    const/4 p1, 0x0

    invoke-interface {p5, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;IIILcom/android/server/appop/AppOpsService$InProgressStartOpEvent-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public finish()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getAttributionChainId()I
    .locals 0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    return p0
.end method

.method public getAttributionFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    return p0
.end method

.method public getClientId()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    return p0
.end method

.method public getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object p0
.end method

.method public getStartElapsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-wide v0
.end method

.method public getUidState()I
    .locals 0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return p0
.end method

.method public reinit(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;IILandroid/app/AppOpsManager$OpEventProxyInfo;IILandroid/util/Pools$Pool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "II",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            "II",
            "Landroid/util/Pools$Pool<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    iput p8, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    iput p9, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz p1, :cond_0

    invoke-interface {p13, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    iput-object p10, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    iput p11, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    iput p12, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    const/4 p1, 0x0

    invoke-interface {p5, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method
