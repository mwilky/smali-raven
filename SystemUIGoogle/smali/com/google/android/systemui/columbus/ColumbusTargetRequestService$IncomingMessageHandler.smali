.class public final Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;
.super Landroid/os/Handler;
.source "ColumbusTargetRequestService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IncomingMessageHandler"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusTargetRequestService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusTargetRequestService.kt\ncom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,297:1\n11328#2:298\n11663#2,3:299\n1741#3,3:302\n*S KotlinDebug\n*F\n+ 1 ColumbusTargetRequestService.kt\ncom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler\n*L\n157#1:298\n157#1:299,3\n164#1:302,3\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static replyToMessenger(Landroid/os/Messenger;II)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public final getAppInfoForPackage(Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

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

    move-object v1, v0

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    if-nez v4, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v5}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_4

    const/4 v3, 0x1

    :catch_0
    :cond_4
    if-eqz v3, :cond_2

    move-object v2, v0

    :cond_5
    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    :goto_1
    return-object v2
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

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

    const/4 v3, 0x2

    const-string v4, "Columbus/TargetRequest"

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v2, v5, :cond_7

    if-eq v2, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Invalid request type: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsNotAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->getPackageShownCount(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v6, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-nez v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->getAppInfoForPackage(Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsTarget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageNeedsToCoolDown(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v6}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void

    :cond_5
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v5}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    goto/16 :goto_3

    :cond_6
    :goto_2
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v3}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void

    :cond_7
    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsNotAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsTarget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller already target: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->packageNeedsToCoolDown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v3}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller throttled: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->getPackageShownCount(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v6, :cond_b

    move v1, v5

    :cond_b
    if-eqz v1, :cond_c

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v6}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller already shown max times: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->getAppInfoForPackage(Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v7

    if-nez v7, :cond_d

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    invoke-static {p0, p1, v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller not launchable: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object v9, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v10, p1, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object p1, v6, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;

    move-object v5, v0

    move-object v8, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;Landroid/content/pm/LauncherActivityInfo;Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void

    :cond_e
    :goto_4
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v5}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Unsupported caller: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final packageIsNotAllowed(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->allowPackageList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->sysUIContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x8000000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    sget-object v8, Lkotlin/text/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->allowCertList:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v1

    :cond_5
    :goto_2
    xor-int/lit8 p0, v4, 0x1

    return p0
.end method

.method public final packageIsTarget(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

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

.method public final packageNeedsToCoolDown(Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->getLastDenyTimestamp(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v1, p0

    monitor-exit v0

    sget-wide p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->PACKAGE_DENY_COOLDOWN_MS:J

    cmp-long p0, v1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
