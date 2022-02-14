.class final Lcom/android/server/contentcapture/ContentCaptureServerSession;
.super Ljava/lang/Object;
.source "ContentCaptureServerSession.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final appComponentName:Landroid/content/ComponentName;

.field final mActivityToken:Landroid/os/IBinder;

.field private final mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

.field private final mId:I

.field private final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

.field private final mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/os/IBinder;Landroid/app/assist/ActivityId;Lcom/android/server/contentcapture/ContentCapturePerUserService;Landroid/content/ComponentName;Lcom/android/internal/os/IResultReceiver;IIIII)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move/from16 v10, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz v10, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    move-object/from16 v11, p1

    iput-object v11, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mLock:Ljava/lang/Object;

    iput-object v9, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    move-object/from16 v12, p5

    iput-object v12, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    move-object/from16 v13, p4

    iput-object v13, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iput v10, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    move/from16 v14, p10

    iput v14, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    new-instance v15, Landroid/view/contentcapture/ContentCaptureContext;

    const/4 v3, 0x0

    move-object v2, v15

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p8

    move-object/from16 v7, p2

    move/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V

    iput-object v15, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    move-object/from16 v2, p6

    iput-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    :try_start_0
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lcom/android/server/contentcapture/ContentCaptureServerSession$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/android/server/contentcapture/ContentCaptureServerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureServerSession;)V

    invoke-interface {v3, v4, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not register DeathRecipient for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private onClientDeath()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientDeath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): removing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->removeSelfLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public destroyLocked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy(notifyRemoteService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked(): no remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionFinished(I)V

    :cond_2
    return-void
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "context: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "has autofill callback: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method isActivitySession(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$ContentCaptureServerSession()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->onClientDeath()V

    return-void
.end method

.method public notifySessionStartedLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifySessionStartedLocked(): no remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    iget v4, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    const/4 v6, 0x2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method public pauseLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pausing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    const/16 v1, 0x804

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    return-void
.end method

.method public removeSelfLocked(Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->destroyLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeSessionLocked(I)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeSessionLocked(I)V

    throw v0
.end method

.method public resurrectLocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string v2, "destroyLocked(: no remote service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isVerbose()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resurrecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Landroid/view/contentcapture/ContentCaptureContext;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;I)V

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    iget v4, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    const/16 v6, 0x1002

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method public sendActivitySnapshotLocked(Landroid/service/contentcapture/SnapshotData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapshot: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendActivitySnapshotLocked(): no remote service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method public setContentCaptureEnabledLocked(Z)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error async reporting result to client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCaptureSession[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
