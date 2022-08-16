.class public Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;
.super Lcom/android/systemui/CoreStartable;
.source "ComplicationTypesUpdater.java"


# instance fields
.field public final mDreamBackend:Lcom/android/settingslib/dream/DreamBackend;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dreams/DreamOverlayStateController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;->mDreamBackend:Lcom/android/settingslib/dream/DreamBackend;

    iput-object p3, p0, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p5, p0, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    new-instance v0, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater$1;-><init>(Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;)V

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string/jumbo v2, "screensaver_enabled_complications"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater$1;->onChange(Z)V

    return-void
.end method
