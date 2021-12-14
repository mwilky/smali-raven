.class public final Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle$configurationChangedListener$1;
.super Ljava/lang/Object;
.source "ThemeOverlayControllerGoogle.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/flags/SystemPropertiesHelper;Landroid/content/res/Resources;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle$configurationChangedListener$1;->this$0:Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverlayChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle$configurationChangedListener$1;->this$0:Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;

    invoke-virtual {p0}, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->setBootColorSystemProps()V

    return-void
.end method
