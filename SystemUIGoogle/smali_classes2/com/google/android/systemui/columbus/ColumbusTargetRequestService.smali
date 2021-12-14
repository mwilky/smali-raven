.class public final Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;
.super Landroid/app/Service;
.source "ColumbusTargetRequestService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$Companion;,
        Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$Companion;

.field private static final PACKAGE_DENY_COOLDOWN_MS:J


# instance fields
.field private final allowCertList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final allowPackageList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final columbusContext:Lcom/google/android/systemui/columbus/ColumbusContext;

.field private final columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

.field private final columbusStructuredDataManager:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

.field private launcherApps:Landroid/content/pm/LauncherApps;

.field private final mainHandler:Landroid/os/Handler;

.field private final messageDigest:Ljava/security/MessageDigest;

.field private final messenger:Landroid/os/Messenger;

.field private final sysUIContext:Landroid/content/Context;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->Companion:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$Companion;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->PACKAGE_DENY_COOLDOWN_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Lcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 1

    const-string v0, "sysUIContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columbusSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columbusStructuredDataManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->sysUIContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/systemui/columbus/ColumbusContext;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/columbus/ColumbusContext;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusContext:Lcom/google/android/systemui/columbus/ColumbusContext;

    new-instance p2, Landroid/os/Messenger;

    new-instance p3, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    invoke-direct {p3, p0, p7}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;-><init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;Landroid/os/Looper;)V

    invoke-direct {p2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->messenger:Landroid/os/Messenger;

    const-string p2, "SHA-256"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/google/android/systemui/columbus/ColumbusResourceHelper;->SUMATRA_ALLOW_LIST:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    const-string p3, "sysUIContext.resources.getStringArray(\n            ColumbusResourceHelper.SUMATRA_ALLOW_LIST)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    array-length p4, p2

    const/4 p5, 0x0

    invoke-static {p2, p5, p3, p5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->allowPackageList:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/systemui/columbus/ColumbusResourceHelper;->SUMATRA_CERT_LIST:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "sysUIContext.resources.getStringArray(\n            ColumbusResourceHelper.SUMATRA_CERT_LIST)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    array-length p3, p1

    invoke-static {p1, p5, p2, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->allowCertList:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getAllowCertList$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->allowCertList:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getAllowPackageList$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->allowPackageList:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getColumbusSettings$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusSettings;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    return-object p0
.end method

.method public static final synthetic access$getColumbusStructuredDataManager$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    return-object p0
.end method

.method public static final synthetic access$getLauncherApps$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Landroid/content/pm/LauncherApps;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMessageDigest$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Ljava/security/MessageDigest;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->messageDigest:Ljava/security/MessageDigest;

    return-object p0
.end method

.method public static final synthetic access$getPACKAGE_DENY_COOLDOWN_MS$cp()J
    .locals 2

    sget-wide v0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->PACKAGE_DENY_COOLDOWN_MS:J

    return-wide v0
.end method

.method public static final synthetic access$getSysUIContext$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->sysUIContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getUiEventLogger$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method public static final synthetic access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/systemui/settings/UserTracker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->columbusContext:Lcom/google/android/systemui/columbus/ColumbusContext;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusContext;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/pm/LauncherApps;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/pm/LauncherApps;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
