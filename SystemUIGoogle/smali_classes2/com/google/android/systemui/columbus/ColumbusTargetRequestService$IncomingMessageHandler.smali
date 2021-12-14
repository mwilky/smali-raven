.class final Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;
.super Landroid/os/Handler;
.source "ColumbusTargetRequestService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingMessageHandler"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusTargetRequestService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusTargetRequestService.kt\ncom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,297:1\n11298#2:298\n11633#2,3:299\n1711#3,3:302\n*E\n*S KotlinDebug\n*F\n+ 1 ColumbusTargetRequestService.kt\ncom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler\n*L\n157#1:298\n157#1,3:299\n164#1,3:302\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static final synthetic access$incrementPackageShowCount(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->incrementPackageShowCount(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$replyToMessenger(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void
.end method

.method private final displayDialog(Landroid/content/pm/LauncherActivityInfo;Landroid/os/Messenger;I)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getMainHandler$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    move-object v1, v7

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;Landroid/content/pm/LauncherActivityInfo;Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final getAppInfoForPackage(Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getLauncherApps$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Landroid/content/pm/LauncherApps;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/systemui/settings/UserTracker;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getLauncherApps$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Landroid/content/pm/LauncherApps;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/systemui/settings/UserTracker;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v3, v2

    :catch_0
    :cond_4
    if-eqz v3, :cond_2

    move-object v1, v0

    :cond_5
    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    :goto_1
    return-object v1
.end method

.method private final incrementPackageShowCount(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getColumbusStructuredDataManager$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->incrementPackageShownCount(Ljava/lang/String;)V

    return-void
.end method

.method private final packageIsNotAllowed(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getAllowPackageList$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getSysUIContext$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p1

    :goto_0
    const-string v1, "if (packageInfo.signingInfo.hasMultipleSigners()) {\n                packageInfo.signingInfo.apkContentsSigners\n            } else {\n                packageInfo.signingInfo.signingCertificateHistory\n            }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    invoke-static {v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getMessageDigest$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    const-string v7, "messageDigest.digest(it.toByteArray())"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lkotlin/text/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getAllowCertList$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v0

    :cond_5
    :goto_2
    xor-int/lit8 p0, v4, 0x1

    return p0

    :cond_6
    :goto_3
    return v0
.end method

.method private final packageIsTarget(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getColumbusSettings$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getColumbusSettings$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getColumbusSettings$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final packageNeedsToCoolDown(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getColumbusStructuredDataManager$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->getTimeSinceLastDeny(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getPACKAGE_DENY_COOLDOWN_MS$cp()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final packageQuotaIsExhausted(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getColumbusStructuredDataManager$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->getPackageShownCount(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x3

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final replyToMessenger(Landroid/os/Messenger;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object p0

    iput p2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    aget-object v0, v0, v1

    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "Columbus/TargetRequest"

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Invalid request type: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsNotAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageQuotaIsExhausted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->getAppInfoForPackage(Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsTarget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageNeedsToCoolDown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, p1, v3}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, p1, v5}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    goto/16 :goto_2

    :cond_5
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, p1, v4}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void

    :cond_6
    if-eqz v0, :cond_c

    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsNotAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsTarget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2, p1, v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller already target: "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageNeedsToCoolDown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, p1, v4}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller throttled: "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageQuotaIsExhausted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, p1, v3}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller already shown max times: "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->getAppInfoForPackage(Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller not launchable: "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v2, "msg.replyTo"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->displayDialog(Landroid/content/pm/LauncherActivityInfo;Landroid/os/Messenger;I)V

    :goto_2
    return-void

    :cond_c
    :goto_3
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, p1, v5}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Unsupported caller: "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
