.class public Lcom/google/android/systemui/GoogleServices;
.super Lcom/android/systemui/VendorServices;
.source "GoogleServices.java"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAutorotateDataService:Lcom/google/android/systemui/autorotate/AutorotateDataService;

.field private final mColumbusServiceLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConfigurationGoogle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/internal/logging/UiEventLogger;Ldagger/Lazy;Landroid/app/AlarmManager;Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;",
            ">;",
            "Landroid/app/AlarmManager;",
            "Lcom/google/android/systemui/autorotate/AutorotateDataService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/VendorServices;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/GoogleServices;->mServices:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/systemui/GoogleServices;->mServiceConfigurationGoogle:Ldagger/Lazy;

    iput-object p3, p0, Lcom/google/android/systemui/GoogleServices;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p4, p0, Lcom/google/android/systemui/GoogleServices;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p5, p0, Lcom/google/android/systemui/GoogleServices;->mColumbusServiceLazy:Ldagger/Lazy;

    iput-object p6, p0, Lcom/google/android/systemui/GoogleServices;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p7, p0, Lcom/google/android/systemui/GoogleServices;->mAutorotateDataService:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    return-void
.end method

.method private addService(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/GoogleServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/GoogleServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/GoogleServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/Dumpable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/GoogleServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/Dumpable;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->ambient_indication_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    iget-object v1, p0, Lcom/google/android/systemui/GoogleServices;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->initializeView(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    new-instance v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/systemui/GoogleServices;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;-><init>(Landroid/content/Context;Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/app/AlarmManager;)V

    invoke-direct {p0, v1}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/DisplayCutoutEmulationAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/systemui/coversheet/CoversheetService;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/coversheet/CoversheetService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices;->mAutorotateDataService:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-virtual {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->init()V

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices;->mAutorotateDataService:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.context_hub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraContext;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/elmyra/ElmyraContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/ElmyraContext;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/GoogleServices;->mServiceConfigurationGoogle:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/ServiceConfiguration;

    iget-object v3, p0, Lcom/google/android/systemui/GoogleServices;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/elmyra/ElmyraService;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/ServiceConfiguration;Lcom/android/internal/logging/UiEventLogger;)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusContext;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/ColumbusContext;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices;->mColumbusServiceLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/systemui/face/FaceNotificationService;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/face/FaceNotificationService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_touch_context_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/systemui/input/TouchContextService;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/input/TouchContextService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/GoogleServices;->addService(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
