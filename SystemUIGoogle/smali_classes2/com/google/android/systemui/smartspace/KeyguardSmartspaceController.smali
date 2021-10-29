.class public final Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;
.super Ljava/lang/Object;
.source "KeyguardSmartspaceController.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final mediaController:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

.field private final zenController:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zenController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;->zenController:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;->mediaController:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/FeatureFlags;->isSmartspaceEnabled()Z

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
    invoke-virtual {p3}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->init()V

    invoke-virtual {p4}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->init()V

    :goto_0
    return-void
.end method
