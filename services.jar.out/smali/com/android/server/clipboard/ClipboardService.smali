.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLASSIFICATION_LENGTH:I = 0x190

.field private static final IS_EMULATOR:Z

.field private static final PROPERTY_MAX_CLASSIFICATION_LENGTH:Ljava/lang/String; = "max_classification_length"

.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

.field private final mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field private final mEmulatorClipboardMonitor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMaxClassificationLength:I

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mShowAccessNotifications:Z

.field private final mUgm:Landroid/app/IUriGrantsManager;

.field private final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private final mUm:Landroid/os/IUserManager;

.field private final mWm:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    nop

    const-string/jumbo v0, "ro.boot.qemu"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "user"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IUserManager;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const-class v1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    const-class v1, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    const-string v1, "clipboard"

    invoke-interface {v0, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    sget-boolean v2, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    new-instance v3, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {v2, v3}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;-><init>(Ljava/util/function/Consumer;)V

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mEmulatorClipboardMonitor:Ljava/util/function/Consumer;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mEmulatorClipboardMonitor:Ljava/util/function/Consumer;

    :goto_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    nop

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ClipboardService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwner(Landroid/content/ClipData;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/clipboard/ClipboardService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    return-void
.end method

.method private addActiveOwnerLocked(ILjava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, p2, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " does not own package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_0
    move-exception v4

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v5, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    iget-object v7, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v7, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    iget v8, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {p0, v7, v8, p2, v9}, Lcom/android/server/clipboard/ClipboardService;->grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/view/textclassifier/TextLinks;",
            "Landroid/view/textclassifier/TextClassifier;",
            ")V"
        }
    .end annotation

    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ClipDescription;->setConfidenceScores(Ljava/util/Map;)V

    invoke-virtual {p3}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ClipData$Item;->setTextLinks(Landroid/view/textclassifier/TextLinks;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    return-void
.end method

.method private checkDataOwner(Landroid/content/ClipData;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwner(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkItemOwner(Landroid/content/ClipData$Item;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method private checkUriOwner(Landroid/net/Uri;I)V
    .locals 8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    move v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;II)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;IIZ)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p3, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4, p2}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown clipboard appop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_3

    :pswitch_1
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    move v0, v3

    :cond_3
    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p3, p4}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v3, :cond_5

    invoke-virtual {v3, p3, p4}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Denying clipboard access to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", application is not in focus nor is it a system service for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ClipboardService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    if-eqz p5, :cond_7

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, p1, p3, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    :goto_4
    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassificationManager;

    return-object v1
.end method

.method private doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v0, v2}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v6

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v0

    invoke-virtual {v6}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textclassifier/TextLinks$TextLink;

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v8}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v8, v9}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/textclassifier/TextLinks$TextLink;->getConfidenceScore(Ljava/lang/String;)F

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v11, v12

    if-lez v12, :cond_0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v8, v1, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {v1, v4}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v9, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, p2

    if-ne v9, v10, :cond_4

    :try_start_1
    invoke-direct {v1, v0, v7, v6, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    invoke-virtual {v1, v4}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_4

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    if-eq v13, v4, :cond_3

    const-string/jumbo v14, "no_sharing_into_profile"

    invoke-direct {v1, v14, v13}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_3

    invoke-direct {v1, v13}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v15

    invoke-direct {v1, v15, v2}, Lcom/android/server/clipboard/ClipboardService;->hasTextLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-direct {v1, v15, v7, v6, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v10, p2

    :goto_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 2

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    invoke-direct {v1, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getIntendingUid(Ljava/lang/String;I)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method private getIntendingUserId(Ljava/lang/String;I)I
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "checkClipboardServiceCallingUser"

    move v6, p2

    move-object v10, p1

    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method private grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 10

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    move v4, p2

    move-object v5, p3

    move v9, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method private hasRestriction(Ljava/lang/String;I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ClipboardService"

    const-string v2, "Remote Exception calling UserManager.getUserRestrictions: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    return v1
.end method

.method private hasTextLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/CharSequence;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method private isDefaultIme(ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isDeviceLocked(I)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isText(Landroid/content/ClipData;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method static synthetic lambda$new$1(Landroid/content/ClipData;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$notifyTextClassifierLocked$5(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/view/textclassifier/TextClassifier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;-><init>(I)V

    new-instance v1, Landroid/view/textclassifier/TextClassificationContext$Builder;

    const-string v2, "clipboard"

    invoke-direct {v1, p0, v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    iget-object v1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    const-string/jumbo v2, "source_package"

    invoke-static {v2, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->build()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method

.method private notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->isText(Landroid/content/ClipData;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v2, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1, v1}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/view/textclassifier/TextClassifier;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private revokeItemPermission(Landroid/content/ClipData$Item;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method private revokeUriPermission(Landroid/net/Uri;I)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {p1, v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeItemPermission(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    :try_start_0
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    const/16 v5, 0x1d

    iget-object v6, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    iget v8, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v5}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_0
    move-exception v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void
.end method

.method private setPrimaryClipInternalLocked(Landroid/content/ClipData;ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mEmulatorClipboardMonitor:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->startClassificationLocked(Landroid/content/ClipData;I)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    const-string/jumbo v4, "no_cross_profile_copy_paste"

    invoke-direct {p0, v4, v0}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v4

    xor-int/2addr v4, v3

    if-nez v4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/content/ClipData;

    invoke-direct {v5, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    move-object p1, v5

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_0
    if-ltz v5, :cond_3

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-virtual {p1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    if-eq v6, v0, :cond_4

    const-string/jumbo v7, "no_sharing_into_profile"

    invoke-direct {p0, v7, v6}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_4

    nop

    invoke-direct {p0, v6}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v8

    invoke-direct {p0, v8, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-nez p2, :cond_0

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz p2, :cond_1

    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x270f

    iput v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ClipDescription;->setTimestamp(J)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    return-void
.end method

.method private showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .locals 3

    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    const-string v2, "clipboard_show_access_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p3, p1}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p2, p3}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private startClassificationLocked(Landroid/content/ClipData;I)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;

    move-result-object v0

    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-direct {v2, v4, v5}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v5}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v2

    if-le v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    return-void
.end method

.method private updateConfig()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "clipboard"

    const-string/jumbo v2, "show_access_notifications"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    const-string v1, "clipboard"

    const-string/jumbo v2, "max_classification_length"

    const/16 v3, 0x190

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

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
.method getRelatedProfiles(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "ClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception calling UserManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public synthetic lambda$new$0$ClipboardService(Landroid/content/ClipData;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$2$ClipboardService(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    return-void
.end method

.method public synthetic lambda$showAccessNotificationLocked$4$ClipboardService(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10405df

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClipboardService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public synthetic lambda$startClassificationLocked$3$ClipboardService(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$1;)V

    const-string v1, "clipboard"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/clipboard/ClipboardService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPrimaryClipInternal(Landroid/content/ClipData;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;I)V
    .locals 2

    const-string/jumbo v0, "mLock"

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
