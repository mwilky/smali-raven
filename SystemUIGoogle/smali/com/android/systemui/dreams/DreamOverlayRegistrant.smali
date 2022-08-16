.class public Lcom/android/systemui/dreams/DreamOverlayRegistrant;
.super Lcom/android/systemui/CoreStartable;
.source "DreamOverlayRegistrant.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mCurrentRegisteredState:Z

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mOverlayServiceComponent:Landroid/content/ComponentName;

.field public final mReceiver:Lcom/android/systemui/dreams/DreamOverlayRegistrant$1;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DreamOverlayRegistrant"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mCurrentRegisteredState:Z

    new-instance p1, Lcom/android/systemui/dreams/DreamOverlayRegistrant$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/DreamOverlayRegistrant$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayRegistrant;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mReceiver:Lcom/android/systemui/dreams/DreamOverlayRegistrant$1;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mResources:Landroid/content/res/Resources;

    const-string p1, "dreams"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/android/systemui/CoreStartable;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/dreams/DreamOverlayService;

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mOverlayServiceComponent:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final registerOverlayService()V
    .locals 7

    const-string v0, "DreamOverlayRegistrant"

    iget-object v1, p0, Lcom/android/systemui/CoreStartable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mOverlayServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f05000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    if-eq v5, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mOverlayServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mOverlayServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v3, v4

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mCurrentRegisteredState:Z

    if-ne v1, v3, :cond_3

    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mCurrentRegisteredState:Z

    :try_start_0
    sget-boolean v1, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->DEBUG:Z

    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registering dream overlay service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mOverlayServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, "clearing dream overlay service"

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-boolean v2, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mCurrentRegisteredState:Z

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mOverlayServiceComponent:Landroid/content/ComponentName;

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    invoke-interface {v1, p0}, Landroid/service/dreams/IDreamManager;->registerDreamOverlayService(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not register dream overlay service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public final start()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mOverlayServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/CoreStartable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->mReceiver:Lcom/android/systemui/dreams/DreamOverlayRegistrant$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayRegistrant;->registerOverlayService()V

    return-void
.end method
