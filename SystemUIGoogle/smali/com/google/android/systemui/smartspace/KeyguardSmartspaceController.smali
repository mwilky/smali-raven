.class public final Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;
.super Ljava/lang/Object;
.source "KeyguardSmartspaceController.kt"


# instance fields
.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object p0, Lcom/android/systemui/flags/Flags;->SMARTSPACE:Lcom/android/systemui/flags/ResourceBooleanFlag;

    invoke-interface {p2, p0}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.systemui"

    const-string p3, "com.google.android.systemui.keyguard.KeyguardSliceProviderGoogle"

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    :cond_0
    iget-object p0, p3, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    new-instance p1, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;

    invoke-direct {p1, p3}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p3}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->updateNextAlarm()V

    iget-object p0, p4, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    new-instance p1, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;

    invoke-direct {p1, p4}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p4, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance p1, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;

    invoke-direct {p1, p4, p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;-><init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p4, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->userTracker:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;

    :goto_0
    return-void
.end method
